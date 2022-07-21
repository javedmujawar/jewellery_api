'use strict';
module.exports = function(Company) {
     
     //To get Company key value pair list.
     Company.getListKV = function (cb) {
		Company.dataSource.connector.query("select id,name from company where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Company.remoteMethod('getListKV', {
        description: 'To get Company key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
