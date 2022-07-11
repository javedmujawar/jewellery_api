'use strict';

module.exports = function(Productgroup) {

     //To get product group key value pair list.
     Productgroup.getListKV = function (cb) {
		Productgroup.dataSource.connector.query("select id,name from productgroup where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Productgroup.remoteMethod('getListKV', {
        description: 'To get product group key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
