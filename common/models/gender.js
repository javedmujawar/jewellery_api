'use strict';
module.exports = function(Gender) {

     //To get gender key value pair list.
     Gender.getListKV = function (cb) {
		Gender.dataSource.connector.query("select id,name from gender where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Gender.remoteMethod('getListKV', {
        description: 'To get gender key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
