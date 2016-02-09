module widget.controller.form.elements.elements;

import widget;

class FormElementsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "elements";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/elements")
		void elements(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/form/elements.dt",
			);
		}
		+/
	}
}
