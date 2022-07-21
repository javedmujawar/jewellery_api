'use strict';
module.exports = function(Bloodgroup) {

     //To get bloodgroup key value pair list.
     Bloodgroup.getListKV = function (cb) {
		Bloodgroup.dataSource.connector.query("select id,name from bloodgroup where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Bloodgroup.remoteMethod('getListKV', {
        description: 'To get bloodgroup key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
