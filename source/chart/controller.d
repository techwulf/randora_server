module chart.controller;

import chart;

class ChartController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "chart";
	}
	/+
	@method(HTTPMethod.GET){
		@path("chart")
		@path("chart/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"chart/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}