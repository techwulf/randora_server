module widget.controller;

import widget;

class WidgetController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "widget";
	}
	/+
	@method(HTTPMethod.GET){
		@path("widget")
		@path("widget/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"widget/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}