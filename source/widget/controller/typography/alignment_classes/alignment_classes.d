module widget.controller.typography.alignment_classes.alignment_classes;

import widget;

class TypographyAlignmentClassesController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "alignment_classes";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/alignment_classes")
		void alignment_classes(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/alignment_classes/index.dt",
			);
		}
		+/
	}
}
