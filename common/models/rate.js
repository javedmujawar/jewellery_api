'use strict';

module.exports = function(Rate) {

     //To get Join list.
     Rate.getJoinList = function (cb) {
		Rate.dataSource.connector.query("select r.id,r.rateDate,r.description,r.categoryId,cg.name'categoryName',r.subcategoryId,scg.name'subcategoryName',r.purityId,p.name'purityName',r.status from rate r inner join category cg on r.categoryId = cg.id and cg.isDeleted = 0 inner join subcategory scg on r.subcategoryId = scg.id and scg.isDeleted =0 inner join purity p on r.purityId = p.id and p.isDeleted = 0 and r.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

    Rate.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
