module widget.controller.typography.abbreviations.abbreviations;

import widget;

class TypographyAbbreviationsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "abbreviations";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/abbreviations")
		void abbreviations(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/abbreviations/index.dt",
			);
		}
		+/
	}
}
