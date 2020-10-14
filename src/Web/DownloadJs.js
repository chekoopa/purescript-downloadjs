const download = require("downloadjs");

exports.download_ = function (data) {
    return function (fileName) {
        return function (mimeType) {
            return function () {
                // the function returns true on success,
                // so we explicitly cast null to false, just in case
                return Boolean(download(data, fileName, mimeType));
            }
        }
    }
};