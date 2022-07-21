'use strict';

module.exports = function(Gst) {

     //To get gst key value pair list.
     Gst.getListKV = function (cb) {
		Gst.dataSource.connector.query("select id,name from gst where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Gst.remoteMethod('getListKV', {
        description: 'To get gst key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
