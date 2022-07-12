'use strict';
module.exports = function(Country) {
     
    //To get Country key value pair list.
	Country.getListKV = function (cb) {
		Country.dataSource.connector.query("select id,name from country where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Country.remoteMethod('getListKV', {
        description: 'To get country key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
