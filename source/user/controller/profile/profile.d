module user.controller.profile.profile;

import user;

class ProfileController : UserControllerPrototype{
	this(){
		super();
		this.name = "profile";
		//this.init();
	}

	@method(HTTPMethod.GET){
		@path("/:id")
		void getProfile(HTTPServerRequest request, HTTPServerResponse response){
			import std.conv;
			int id = to!(int)(request.params["id"]);

			auto user = this.model.find(id);

			if(user !is null){
				/+
				response.render!(
					"user/profile/index.dt",
					user
				);
				+/
			}

			enforceHTTP(false, HTTPStatus.badRequest, "User Does Not Exist.");
		}
	}
}
