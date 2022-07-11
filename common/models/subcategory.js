'use strict';

module.exports = function(Subcategory) {

    //To get Join list.
	Subcategory.getJoinList = function (cb) {
		Subcategory.dataSource.connector.query("SELECT sc.id,sc.name,sc.categoryId,sc.description,sc.status,cg.name'categoryName' FROM subcategory sc inner join category cg on sc.categoryId = cg.id and cg.isDeleted = 0 and sc.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

    Subcategory.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

};
