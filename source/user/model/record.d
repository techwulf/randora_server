module user.model.record;

package import user.model;

import std.typecons;

class UserRecord : AppModelRecord{
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