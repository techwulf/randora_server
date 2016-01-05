module calendar.controller;

import calendar;

class CalendarController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "calendar";
	}
	/+
	@method(HTTPMethod.GET){
		@path("calendar")
		@path("calendar/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"calendar/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}