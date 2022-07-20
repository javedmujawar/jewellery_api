'use strict';
module.exports = function(Bank) {
     
     //To get Bank key value pair list.
     Bank.getListKV = function (cb) {
		Bank.dataSource.connector.query("select id,name from bank where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Bank.remoteMethod('getListKV', {
        description: 'To get Bank key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
