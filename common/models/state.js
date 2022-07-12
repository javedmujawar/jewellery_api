'use strict';

module.exports = function(State) {
    //To get Join list.
	State.getJoinList = function (cb) {
		State.dataSource.connector.query("select st.id,st.name,st.shortName,st.code,st.countryId,c.name'countryName',st.status FROM state st inner join country c on st.countryId = c.id and c.isDeleted = 0 and st.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};
    State.getListByCountryId = function (countryId,cb) {
		State.dataSource.connector.query("select id, name from state where countryId="+countryId, (err, results) => {
			cb(err, results);
		});	
	};

    State.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
    State.remoteMethod('getListByCountryId', {
        description: 'To get list country wise.',
        http: { path: "/getListByCountryId/:countryId", verb: 'GET' },
        accepts: {
            arg: "countryId",
            type: "number",
            http: { source: "path" },
          },
        returns: { type: 'array', root: true }
    });

};
