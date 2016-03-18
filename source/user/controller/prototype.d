module user.controller.prototype;

import user;

class UserControllerPrototype : AppController{
	UserModel	model	= null;

	this(){
		super();
		this.name = "user";

		this.model = new UserModel();
		this.model.populate_test();
	}
}
