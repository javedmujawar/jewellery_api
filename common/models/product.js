'use strict';
module.exports = function(Product) {
      //To get product key value pair list.
      Product.getListKV = function (cb) {
		Product.dataSource.connector.query("select id,name from product where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Product.remoteMethod('getListKV', {
        description: 'To get product key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
     
};
