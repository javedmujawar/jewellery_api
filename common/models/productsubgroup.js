'use strict';

module.exports = function(ProductSubGroup) {

    //To get Join list.
	ProductSubGroup.getJoinList = function (cb) {
		ProductSubGroup.dataSource.connector.query("SELECT psg.id,psg.name,psg.shortName,psg.maingroupId,pmg.name'maingroupName',psg.groupId,pg.name'groupName',psg.description,psg.status FROM productsubgroup psg inner join productmaingroup pmg  on psg.maingroupId = pmg.id inner join productgroup pg on pg.id = psg.groupId and psg.isDeleted = 0 and pmg.isDeleted = 0 and pg.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

     //To get ProductSubGroup key value pair list.
     ProductSubGroup.getListKV = function (cb) {
		ProductSubGroup.dataSource.connector.query("select id,name from productsubgroup where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};
    ProductSubGroup.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
    ProductSubGroup.remoteMethod('getListKV', {
        description: 'To get ProductSubGroup key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

};
