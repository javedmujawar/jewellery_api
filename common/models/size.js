'use strict';

module.exports = function(Size) {
 //To get size key value pair list.
 Size.getListKV = function (cb) {
    Size.dataSource.connector.query("select id,name from size where isDeleted=0", (err, results) => {
        cb(err, results);
    });	
};

Size.remoteMethod('getListKV', {
    description: 'To get size key value pair list.',
    http: { path: "", verb: 'GET' },
    accepts: [],
    returns: { type: 'array', root: true }
});
};
