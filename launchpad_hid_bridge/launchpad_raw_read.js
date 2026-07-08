// Standalone diagnostic: run with plain `node launchpad_raw_read.js` in the
// Terminal. Claims the vendor-specific interface and polls the IN interrupt
// endpoint (0x81), printing every raw 8-byte report. Press buttons on the
// Launchpad one at a time and watch what comes out. Ctrl+C to stop.
const usb = require('usb');

const VENDOR_ID = 0x1235;
const PRODUCT_ID = 0x000e;

const device = usb.findByIds(VENDOR_ID, PRODUCT_ID);
if (!device) {
	console.log('Device not found.');
	process.exit(1);
}

device.open();

device.setConfiguration(1, (err) => {
	if (err) {
		console.log('setConfiguration error:', err);
		process.exit(1);
	}

	const iface = device.interfaces[0];

	try {
		iface.claim();
	} catch (claimErr) {
		console.log('iface.claim() failed:', claimErr);
		process.exit(1);
	}

	const inEndpoint = iface.endpoints.find((ep) => ep.direction === 'in');
	if (!inEndpoint) {
		console.log('No IN endpoint found.');
		process.exit(1);
	}

	console.log('Claimed interface. Polling 0x81. Press buttons on the Launchpad now (one at a time). Ctrl+C to stop.');

	inEndpoint.startPoll(4, 8);

	inEndpoint.on('data', (data) => {
		console.log(new Date().toISOString(), Array.from(data));
	});

	inEndpoint.on('error', (pollErr) => {
		console.log('Endpoint error:', pollErr);
	});

	process.on('SIGINT', () => {
		console.log('\nStopping...');
		inEndpoint.stopPoll(() => {
			iface.release(true, () => {
				device.close();
				process.exit(0);
			});
		});
	});
});
