'use strict';

module.exports = function(Subcategory) {

    //To get Join list.
	Subcategory.getJoinList = function (cb) {
		Subcategory.dataSource.connector.query("SELECT sc.id,sc.name,sc.categoryId,sc.description,sc.status,cg.name'categoryName' FROM subcategory sc inner join category cg on sc.categoryId = cg.id and cg.isDeleted = 0 and sc.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

    Subcategory.getListByCategoryId = function (categoryId,cb) {
		Subcategory.dataSource.connector.query("select id, name from subcategory where isDeleted = 0 and categoryId="+categoryId, (err, results) => {
			cb(err, results);
		});	
	};

    Subcategory.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

    Subcategory.remoteMethod('getListByCategoryId', {
        description: 'To get list category wise.',
        http: { path: "/getListByCategoryId/:categoryId", verb: 'GET' },
        accepts: {
            arg: "categoryId",
            type: "number",
            http: { source: "path" },
          },
        returns: { type: 'array', root: true }
    });

};
