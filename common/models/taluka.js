'use strict';

module.exports = function(Taluka) {
    //To get Join list.
	Taluka.getJoinList = function (cb) {
		Taluka.dataSource.connector.query("select tlk.id,tlk.name,tlk.shortName,tlk.code,tlk.countryId,c.name'countryName',tlk.stateId,st.name'stateName',tlk.districtId,ds.name'districtName',tlk.status FROM taluka tlk inner join country c on tlk.countryId = c.id and c.isDeleted = 0 and tlk.isDeleted=0 inner join state st on st.id = tlk.stateId and st.isDeleted = 0 inner join district ds on tlk.districtId =ds.id and ds.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};
    Taluka.getListByDistrictId = function (districtId,cb) {
		Taluka.dataSource.connector.query("select id, name from taluka where isDeleted = 0 and districtId="+districtId, (err, results) => {
			cb(err, results);
		});	
	};

    Taluka.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

    Taluka.remoteMethod('getListByDistrictId', {
        description: 'To get list district wise.',
        http: { path: "/getListByDistrictId/:districtId", verb: 'GET' },
        accepts: {
            arg: "districtId",
            type: "number",
            http: { source: "path" },
          },
        returns: { type: 'array', root: true }
    });


};
