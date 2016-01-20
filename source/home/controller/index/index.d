module home.controller.index.index;

import home;

final class IndexController : HomePrototypeController{
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
			response.render!(
				"home/index/index.dt",
				this.name,
				//this.model
			);
		}
	}
}
