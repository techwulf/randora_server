module home.controller;

import home;

class HomeController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "home";
	}
	
	@method(HTTPMethod.GET){
		@path("/")
		@path("home")
		@path("home/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"home/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
}