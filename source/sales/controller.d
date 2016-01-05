module sales.controller;

import sales;

class SalesController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "sales";
	}
	
	@method(HTTPMethod.GET){
		/+
		@path("sales")
		@path("sales/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"sales/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("sales/main_chart")
		void main_chart(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "main_chart";
			render!(
				"sales/main_chart/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("sales/pies")
		void pies(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "pies";
			render!(
				"sales/pies/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("sales/quick_stats")
		void quick_stats(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "quick_stats";
			render!(
				"sales/quick_stats/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		+/
	}
}