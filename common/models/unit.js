'use strict';

module.exports = function(Unit) {

     //To get units key value pair list.
     Unit.getListKV = function (cb) {
		Unit.dataSource.connector.query("select id,name from unit where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Unit.remoteMethod('getListKV', {
        description: 'To get units key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
