// Standalone diagnostic: run with plain `node usb_probe.js` in the Terminal
// (not inside Max) to check whether libusb can see and open the Launchpad
// at the raw USB level, even though it is invisible to the OS's HID stack.
const usb = require('usb');

const VENDOR_ID = 0x1235;
const PRODUCT_ID = 0x000e;

const device = usb.findByIds(VENDOR_ID, PRODUCT_ID);

if (!device) {
	console.log(`Device ${VENDOR_ID.toString(16)}:${PRODUCT_ID.toString(16)} not found via libusb.`);
	console.log('All devices libusb can see:');
	usb.getDeviceList().forEach((d) => {
		const vid = d.deviceDescriptor.idVendor.toString(16).padStart(4, '0');
		const pid = d.deviceDescriptor.idProduct.toString(16).padStart(4, '0');
		console.log(`  ${vid}:${pid}`);
	});
	process.exit(1);
}

console.log('--- deviceDescriptor (available before open) ---');
console.log(JSON.stringify(device.deviceDescriptor, null, 2));

console.log('--- allConfigDescriptors (available before open) ---');
console.log(JSON.stringify(device.allConfigDescriptors, null, 2));

try {
	console.log('Opening...');
	device.open();
	console.log('Opened.');
} catch (err) {
	console.log('device.open() threw:', err);
	process.exit(1);
}

try {
	console.log('--- configDescriptor (active config, after open) ---');
	console.log(JSON.stringify(device.configDescriptor, null, 2));
} catch (err) {
	console.log('Reading configDescriptor threw:', err);
}

try {
	console.log(`device.interfaces length: ${device.interfaces ? device.interfaces.length : 'null/undefined'}`);
	(device.interfaces || []).forEach((iface, i) => {
		console.log(`--- Interface ${i} ---`);
		console.log(JSON.stringify(iface.descriptor, null, 2));
		iface.endpoints.forEach((ep, j) => {
			console.log(`  Endpoint ${j}:`, JSON.stringify(ep.descriptor, null, 2));
		});
	});
} catch (err) {
	console.log('Reading interfaces threw:', err);
}

try {
	console.log('Attempting explicit setConfiguration(1)...');
	device.setConfiguration(1, (err) => {
		if (err) {
			console.log('setConfiguration error:', err);
		} else {
			console.log('setConfiguration succeeded.');
		}
		console.log(`device.interfaces length after setConfiguration: ${device.interfaces ? device.interfaces.length : 'null/undefined'}`);
		(device.interfaces || []).forEach((iface, i) => {
			console.log(`--- (post setConfiguration) Interface ${i} ---`);
			console.log(JSON.stringify(iface.descriptor, null, 2));
			iface.endpoints.forEach((ep, j) => {
				console.log(`  Endpoint ${j}:`, JSON.stringify(ep.descriptor, null, 2));
			});
		});
		device.close();
		console.log('Closed.');
	});
} catch (err) {
	console.log('setConfiguration threw synchronously:', err);
	try {
		device.close();
		console.log('Closed.');
	} catch (e2) {
		console.log('close() also threw:', e2);
	}
}
