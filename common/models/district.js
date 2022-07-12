'use strict';

module.exports = function(District) {
    //To get Join list.
	District.getJoinList = function (cb) {
		District.dataSource.connector.query("select ds.id,ds.name,ds.shortName,ds.code,ds.countryId,c.name'countryName',ds.stateId,st.name'stateName',ds.status FROM district ds inner join country c on ds.countryId = c.id and c.isDeleted = 0 and ds.isDeleted=0 inner join state st on st.id = ds.stateId and st.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

    District.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

};
