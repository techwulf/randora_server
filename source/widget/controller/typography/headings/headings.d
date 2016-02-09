module widget.controller.typography.headings.headings;

import widget;

class TypographyHeadingsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "headings";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/headings")
		void headings(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/headings/index.dt",
			);
		}
		+/
	}
}
