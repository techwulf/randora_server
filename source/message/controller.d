module message.controller;

import message;

class MessageController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "message";
	}
	
	@method(HTTPMethod.GET){
		/+
		@path("message")
		@path("message/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"message/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("message/detail")
		void detail(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "detail";
			render!(
				"message/detail/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		+/
	}
}