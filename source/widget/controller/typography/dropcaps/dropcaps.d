module widget.controller.typography.dropcaps.dropcaps;

import widget;

class TypographyDropcapsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "dropcaps";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/dropcaps")
		void dropcaps(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/dropcaps/index.dt",
			);
		}
		+/
	}
}
