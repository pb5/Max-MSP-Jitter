// Minimal diagnostic with zero native dependencies -- reports Node for Max's
// bundled Node.js version and ABI as soon as the script loads (no message
// needs to be sent). Add a [node.script node_version_probe.js] object to any
// patch and open it; the info prints to the Max console immediately.
const maxAPI = require('max-api');

maxAPI.post('Node version: ' + process.version);
maxAPI.post('ABI (NODE_MODULE_VERSION): ' + process.versions.modules);
maxAPI.post('Platform/arch: ' + process.platform + '/' + process.arch);
