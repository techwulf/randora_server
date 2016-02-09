module widget.controller.form.examples.examples;

import widget;

class FormExamplesController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "examples";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/examples")
		void examples(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/form/examples.dt",
			);
		}
		+/
	}
}
