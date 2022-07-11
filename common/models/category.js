'use strict';

module.exports = function(Category) {

    //To get category key value pair list.
	Category.getListKV = function (cb) {
		Category.dataSource.connector.query("select id,name from category where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Category.remoteMethod('getListKV', {
        description: 'To get category key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
