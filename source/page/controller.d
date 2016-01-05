module page.controller;

import page;

class PageController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "page";
	}
	/+
	@method(HTTPMethod.GET){
		@path("page")
		@path("page/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"page/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("page/list")
		void list(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "list";
			render!(
				"page/list/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}