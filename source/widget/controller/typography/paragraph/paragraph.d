module widget.controller.typography.paragraph.paragraph;

import widget;

class TypographyParagraphController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "paragraph";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/paragraph")
		void paragraph(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/paragraph/index.dt",
			);
		}
		+/
	}
}
