module user.controller.forgot_password.forgot_password;

import user;

class ForgotPasswordController : UserControllerPrototype{
	this(){
		super();
		this.name = "forgot_password";
		//this.init();
	}

	@method(HTTPMethod.GET){
		@path("/")
		void getForgotPassword(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"user/forgot_password/index.dt",
				this.model
			);
			+/
		}
	}
}
