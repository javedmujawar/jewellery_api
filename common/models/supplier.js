'use strict';
module.exports = function(Supplier) {
     //To get Supplier key value pair list.
     Supplier.getListKV = function (cb) {
		Supplier.dataSource.connector.query("select id,name from supplier where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Supplier.remoteMethod('getListKV', {
        description: 'To get Supplier key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
