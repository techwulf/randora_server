module user.model.model;

import user.model;

class UserModel : UserModelPrototype!(UserRecord){
	this(){}
	
	UserRecord authenticate(string username, string password){
		bool authenticate = false;
		
		foreach(UserRecord record; this.records){
			if(record.username == username && record.password == password){
				authenticate = true;
				return record;
			}
		}
		
		return null;
	}
	
	void populate_test(){
		this.add(
			new UserRecord(
				0,
				"Master_Foo",
				"password",
				"master_foo@email.com",
				"profile-pic.jpg"
			)
		);
		this.add(
			new UserRecord(
				1,
				"Master_Bar",
				"password",
				"master_bar@email.com",
				"profile-pic.jpg"
			)
		);
	}
}