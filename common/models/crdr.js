'use strict';
module.exports = function(Crdr) {

     //To get crdr key value pair list.
     Crdr.getListKV = function (cb) {
		Crdr.dataSource.connector.query("select id,name from crdr where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Crdr.remoteMethod('getListKV', {
        description: 'To get crdr key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
