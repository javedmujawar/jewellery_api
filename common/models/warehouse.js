'use strict';

module.exports = function(Warehouse) {

     //To get warehouse key value pair list.
     Warehouse.getListKV = function (cb) {
		Warehouse.dataSource.connector.query("select id,name from warehouse where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Warehouse.remoteMethod('getListKV', {
        description: 'To get warehouse key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
