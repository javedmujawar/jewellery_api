'use strict';
module.exports = function(Usertype) {
     
      //To get Usertype categories key value pair list.
      Usertype.getListKV = function (cb) {
		Usertype.dataSource.connector.query("select id,name from usertype where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Usertype.remoteMethod('getListKV', {
        description: 'To get User type key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
