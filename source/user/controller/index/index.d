module user.controller.index.index;

import user;

final class IndexController : UserControllerPrototype{
	this(){
		super();
		this.name = "index";
		//this.init();
		
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	
	@method(HTTPMethod.GET){
		@path("/")
		@path("/index")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"user/index/index.dt",
				this.name,
				//this.model
			);
			+/
			response.writeBody(
				"asdfasdfassadf",
				"text/plain; charset=UTF-8"
			); 
		}
	}
}
