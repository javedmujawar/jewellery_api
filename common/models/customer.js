'use strict';
module.exports = function(Customer) {
     //To get Customer key value pair list.
     Customer.getListKV = function (cb) {
		Customer.dataSource.connector.query("select id,name from customer where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Customer.remoteMethod('getListKV', {
        description: 'To get Customer key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
