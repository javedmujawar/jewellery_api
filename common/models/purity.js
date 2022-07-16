'use strict';

module.exports = function(Purity) {

    //To get purity key value pair list.
	Purity.getListKV = function (cb) {
		Purity.dataSource.connector.query("select id,name from purity where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Purity.remoteMethod('getListKV', {
        description: 'To get purity key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
