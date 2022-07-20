'use strict';

module.exports = function(Shape) {
 //To get shape key value pair list.
 Shape.getListKV = function (cb) {
    Shape.dataSource.connector.query("select id,name from shape where isDeleted=0", (err, results) => {
        cb(err, results);
    });	
};

Shape.remoteMethod('getListKV', {
    description: 'To get shape key value pair list.',
    http: { path: "", verb: 'GET' },
    accepts: [],
    returns: { type: 'array', root: true }
});
};
