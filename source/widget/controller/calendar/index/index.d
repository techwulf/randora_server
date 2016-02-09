module widget.controller.calendar.index.index;

import widget;

class CalendarIndexController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "index";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/index/index.dt",
			);
		}
		+/
	}
}
