module widget.controller.typography.typography;

import widget;

class TypographyController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "typography";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/typography/index/index.dt",
			);
		}
	}
}
