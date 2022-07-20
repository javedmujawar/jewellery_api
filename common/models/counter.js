'use strict';

module.exports = function(Counter) {

     //To get Counter key value pair list.
     Counter.getListKV = function (cb) {
		Counter.dataSource.connector.query("select id,name from counter where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Counter.remoteMethod('getListKV', {
        description: 'To get Counter key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
