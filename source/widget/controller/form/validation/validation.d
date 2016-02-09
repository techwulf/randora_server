module widget.controller.form.validation.validation;

import widget;

class FormValidationController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "validation";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/validation")
		void validation(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/form/validation.dt",
			);
		}
		+/
	}
}
