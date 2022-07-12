'use strict';

module.exports = function(Village) {
    //To get Join list.
	Village.getJoinList = function (cb) {
		Village.dataSource.connector.query("select vg.id,vg.name,vg.shortName,vg.code,vg.countryId,c.name'countryName',vg.stateId,st.name'stateName',vg.districtId,ds.name'districtName',vg.talukaId,tlk.name'talukaName',vg.status FROM village vg inner join country c on vg.countryId = c.id and c.isDeleted = 0 and vg.isDeleted=0 inner join state st on st.id = vg.stateId and st.isDeleted = 0 inner join district ds on vg.districtId =ds.id and ds.isDeleted = 0 inner join taluka tlk on vg.talukaId = tlk.id and tlk.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

    Village.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

};
