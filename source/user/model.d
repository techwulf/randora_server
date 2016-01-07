module user.model;

import app.model;
import app.record;
import std.typecons;

class UserRecord : AppRecord{
	Tuple!(
		int,	"id",
		string,	"username",
		string,	"password",
		string,	"email",
		string,	"avatar"
	) record;
	alias record this;

	this(){}
	this(int id = -1, string username = "", string password = "", string email = "", string avatar = ""){
		this.record.id			= id;
		this.record.username	= username;
		this.record.password	= password;
		this.record.email		= email;
		this.record.avatar		= avatar;
	}
}

class UserModel : AppModel!(UserRecord){
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
	
}