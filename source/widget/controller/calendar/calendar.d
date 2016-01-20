module widget.controller.calendar.calendar;

import widget;

class CalendarController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "calendar";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/calendar/index.dt",
			);
		}
	}
}
