'use strict';

module.exports = function(Hsnsac) {

     //To get hsnsac key value pair list.
     Hsnsac.getListKV = function (cb) {
		Hsnsac.dataSource.connector.query("select id,name from hsnsac where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Hsnsac.remoteMethod('getListKV', {
        description: 'To get hsnsac key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
