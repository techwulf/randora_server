module user.controller.register.register;

import user;

class RegisterController : UserControllerPrototype{
	this(){
		super();
		this.name = "register";
		//this.init();
	}

	@method(HTTPMethod.GET){
		@path("/")
		void getRegister(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"user/register/index.dt",
				this.model
			);
			+/
		}
	}

	@method(HTTPMethod.POST){
		@path("/")
		void postRegister(HTTPServerRequest request, HTTPServerResponse response){
			enforceHTTP(
				"user" in request.form,
				HTTPStatus.BadRequest,
				"Missing user field."
			);

			response.redirect(
				"/users/" ~ request.form["user"]
			);
		}
	}
}
