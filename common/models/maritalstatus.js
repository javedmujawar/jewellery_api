'use strict';
module.exports = function(Maritalstatus) {

     //To get maritalstatus key value pair list.
     Maritalstatus.getListKV = function (cb) {
		Maritalstatus.dataSource.connector.query("select id,name from maritalstatus where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Maritalstatus.remoteMethod('getListKV', {
        description: 'To get maritalstatus key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
