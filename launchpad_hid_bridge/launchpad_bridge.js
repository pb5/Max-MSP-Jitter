const maxAPI = require('max-api');
const usb = require('usb');

const VENDOR_ID = 0x1235;
const PRODUCT_ID = 0x000e;

let device = null;
let iface = null;
let inEndpoint = null;
let outEndpoint = null;
let runningStatus = null;

// Standard MIDI message length (including status byte) for a given status byte.
function midiMessageLength(status) {
	const type = status & 0xf0;
	if (type === 0xc0 || type === 0xd0) return 2; // program change / channel pressure: 1 data byte
	if (status >= 0xf0) return 1; // system messages -- not expected from this device
	return 3; // note on/off, CC, pitch bend, poly aftertouch: 2 data bytes
}

// The Launchpad's raw interrupt reports are plain MIDI bytes with running
// status, matching Novation's published Launchpad Programmer's Reference.
function handleReport(data) {
	const bytes = Array.from(data);
	let i = 0;
	while (i < bytes.length) {
		let status;
		let offset;
		if (bytes[i] & 0x80) {
			status = bytes[i];
			runningStatus = status;
			offset = i + 1;
		} else {
			status = runningStatus;
			offset = i;
		}
		if (status == null) {
			i += 1; // stray data byte with no established running status
			continue;
		}
		const len = midiMessageLength(status);
		const dataBytes = bytes.slice(offset, offset + (len - 1));
		if (dataBytes.length < len - 1) {
			break; // incomplete message; rest would need to be joined with the next report
		}
		maxAPI.outlet(['midi', status, ...dataBytes]);
		i = offset + dataBytes.length;
	}
}

function openDevice() {
	if (device) {
		maxAPI.post('Already open.');
		return;
	}
	const dev = usb.findByIds(VENDOR_ID, PRODUCT_ID);
	if (!dev) {
		maxAPI.post('Launchpad not found via libusb.');
		return;
	}
	try {
		dev.open();
	} catch (err) {
		maxAPI.post('device.open() failed: ' + err.message);
		return;
	}
	dev.setConfiguration(1, (err) => {
		if (err) {
			maxAPI.post('setConfiguration error: ' + err.message);
			return;
		}
		const ifc = dev.interfaces[0];
		try {
			ifc.claim();
		} catch (claimErr) {
			maxAPI.post('iface.claim() failed: ' + claimErr.message);
			return;
		}

		const inEp = ifc.endpoints.find((ep) => ep.direction === 'in');
		const outEp = ifc.endpoints.find((ep) => ep.direction === 'out');

		if (!inEp) {
			maxAPI.post('No IN endpoint found.');
			return;
		}

		runningStatus = null;
		inEp.startPoll(4, 8);
		inEp.on('data', handleReport);
		inEp.on('error', (pollErr) => maxAPI.post('IN endpoint error: ' + pollErr.message));

		device = dev;
		iface = ifc;
		inEndpoint = inEp;
		outEndpoint = outEp;
		maxAPI.post('Launchpad opened and polling.');
	});
}

function closeDevice() {
	if (!device) {
		maxAPI.post('Not open.');
		return;
	}
	inEndpoint.stopPoll(() => {
		iface.release(true, () => {
			device.close();
			device = null;
			iface = null;
			inEndpoint = null;
			outEndpoint = null;
			maxAPI.post('Closed.');
		});
	});
}

// send status data1 [data2] -- writes a MIDI message to the Launchpad
// (e.g. Note On on the grid/scene notes to set an LED color).
function send(status, data1, data2) {
	if (!outEndpoint) {
		maxAPI.post('Not open, cannot send.');
		return;
	}
	const bytes = data2 === undefined ? [status, data1] : [status, data1, data2];
	outEndpoint.transfer(Buffer.from(bytes), (err) => {
		if (err) {
			maxAPI.post('OUT endpoint error: ' + err.message);
		}
	});
}

maxAPI.addHandler('open', openDevice);
maxAPI.addHandler('close', closeDevice);
maxAPI.addHandler('send', send);
