module notification.controller;

import notification;

class NotificationController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "notification";
	}
	/+
	@method(HTTPMethod.GET){
		@path("notification/drawer")
		void drawer(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "drawer";
			render!(
				"notification/drawer/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("notification")
		@path("notification/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"notification/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}