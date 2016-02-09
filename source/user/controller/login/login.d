module user.controller.login.login;

import user;

class LoginController : UserControllerPrototype{
	this(){
		super();
		this.name = "login";
		//this.init();
	}

	@method(HTTPMethod.GET){
		@path("/")
		void getLogin(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"user/login/index.dt",
				this.model
			);
			+/
		}
	}

	@method(HTTPMethod.POST){
		@path("/")
		void postLogin(HTTPServerRequest request, HTTPServerResponse response){
			UserRecord record = this.model.authenticate(
				request.form["username"],
				request.form["password"]
			);

			//this.app.session.authenticated = record !is null ? true : false;

			//if(this.app.session.authenticated){
				//this.app.session.user_id		= record.id;
				//this.app.session.user_name		= record.username;
				//this.app.session.user_password	= record.password;
				//this.app.session.user_email		= record.email;
				//this.app.session.user_avatar	= record.avatar;

				redirect("/");
			//}else{
			//	enforceHTTP(
			//		false,
			//		HTTPStatus.forbidden,
			//		"Invalid username or password."
			//	);
			//}
		}
	}
}
