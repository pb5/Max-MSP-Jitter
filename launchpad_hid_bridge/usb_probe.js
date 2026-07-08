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

console.log('Found device. Opening...');
device.open();
console.log('Opened.');

console.log('Configuration descriptor:');
console.log(JSON.stringify(device.configDescriptor, null, 2));

device.interfaces.forEach((iface, i) => {
	console.log(`--- Interface ${i} ---`);
	console.log(JSON.stringify(iface.descriptor, null, 2));
	iface.endpoints.forEach((ep, j) => {
		console.log(`  Endpoint ${j}:`);
		console.log('   ', JSON.stringify(ep.descriptor, null, 2));
	});
});

device.close();
console.log('Closed.');
