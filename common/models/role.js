'use strict';
module.exports = function(Role) {

     //To get role key value pair list.
     Role.getListKV = function (cb) {
		Role.dataSource.connector.query("select id,name from role where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Role.remoteMethod('getListKV', {
        description: 'To get role key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
