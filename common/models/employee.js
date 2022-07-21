'use strict';
module.exports = function(Employee) {
     //To get Employee key value pair list.
     Employee.getListKV = function (cb) {
		Employee.dataSource.connector.query("select id,name from employee where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Employee.remoteMethod('getListKV', {
        description: 'To get Employee key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
