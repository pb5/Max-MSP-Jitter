const maxAPI = require('max-api');
const HID = require('node-hid');

const VENDOR_ID = 0x1235;
const PRODUCT_ID = 0x000e;

let device = null;

function listDevices() {
	const devices = HID.devices();
	maxAPI.post(`--- ${devices.length} HID device(s) seen by node-hid ---`);
	devices.forEach((d) => {
		const vid = d.vendorId.toString(16).padStart(4, '0');
		const pid = d.productId.toString(16).padStart(4, '0');
		maxAPI.post(`${vid}:${pid}  ${d.manufacturer || ''} ${d.product || ''} (path: ${d.path})`);
	});
}

function openDevice() {
	if (device) {
		maxAPI.post('Already open.');
		return;
	}
	try {
		device = new HID.HID(VENDOR_ID, PRODUCT_ID);
		maxAPI.post('Launchpad opened.');

		device.on('data', (data) => {
			const bytes = Array.from(data);
			maxAPI.outlet(['raw', ...bytes]);
		});

		device.on('error', (err) => {
			maxAPI.post('HID error: ' + err.message);
		});
	} catch (err) {
		maxAPI.post('Failed to open Launchpad: ' + err.message);
	}
}

function closeDevice() {
	if (device) {
		device.close();
		device = null;
		maxAPI.post('Closed.');
	} else {
		maxAPI.post('Not open.');
	}
}

maxAPI.addHandler('list', listDevices);
maxAPI.addHandler('open', openDevice);
maxAPI.addHandler('close', closeDevice);
