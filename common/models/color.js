'use strict';

module.exports = function(Color) {

      //To get color key value pair list.
      Color.getListKV = function (cb) {
		Color.dataSource.connector.query("select id,name from color where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

    Color.remoteMethod('getListKV', {
        description: 'To get color key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
