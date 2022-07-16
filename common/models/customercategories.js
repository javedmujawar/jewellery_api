'use strict';
module.exports = function(Customercategories) {
     
      //To get customer categories key value pair list.
      Customercategories.getListKV = function (cb) {
		Customercategories.dataSource.connector.query("select id,name from customercategories where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Customercategories.remoteMethod('getListKV', {
        description: 'To get customerc ategories key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
