module user.controller.logout.logout;

import user;

class LogoutController : UserControllerPrototype{
	this(){
		super();
		this.name = "logout";
		//this.init();
	}
	
	@method(HTTPMethod.GET){
		@path("/")
		void getLogout(){
			//this.app.session.authenticated = false;
			terminateSession();
			redirect("/");
		}
	}
}
