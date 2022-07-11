'use strict';

module.exports = function(ProductMainGroup) {

     //To get product mai group key value pair list.
     ProductMainGroup.getListKV = function (cb) {
		ProductMainGroup.dataSource.connector.query("select id,name from productmaingroup where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    ProductMainGroup.remoteMethod('getListKV', {
        description: 'To get product mai group key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
