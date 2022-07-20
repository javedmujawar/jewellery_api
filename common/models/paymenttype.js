'use strict';

module.exports = function(Paymenttype) {

     //To get paymenttype key value pair list.
     Paymenttype.getListKV = function (cb) {
		Paymenttype.dataSource.connector.query("select id,name from paymenttype where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Paymenttype.remoteMethod('getListKV', {
        description: 'To get paymenttype key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};