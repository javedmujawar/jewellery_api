'use strict';
module.exports = function(Userregistration) {     
      //To get Usertype categories key value pair list.
      Userregistration.getListKV = function (cb) {
		Userregistration.dataSource.connector.query("select id,name from userregistration where isDeleted=0", (err, results) => {
			cb(err, results);
		});	
	};

     //To get Join list.
     Userregistration.getJoinList = function (cb) {
		Userregistration.dataSource.connector.query("SELECT ur.id,ur.userName,ur.userTypeId,ut.name'userType',ur.mobileNumber,ur.password,ur.email,ur.photo,ur.sendSms,ur.status FROM userregistration ur inner join usertype ut on ur.userTypeId = ut.id and ur.isDeleted = 0 and ut.isDeleted = 0", (err, results) => {
			cb(err, results);
		});	
	};

    Userregistration.remoteMethod('getListKV', {
        description: 'To get User type key value pair list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });

    Userregistration.remoteMethod('getJoinList', {
        description: 'To get join list.',
        http: { path: "", verb: 'GET' },
        accepts: [],
        returns: { type: 'array', root: true }
    });
};
