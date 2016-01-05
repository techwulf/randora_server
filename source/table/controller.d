module table.controller;

import table;

class TableController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "table";
	}
	/+
	@method(HTTPMethod.GET){
		@path("table")
		@path("table/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"table/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}