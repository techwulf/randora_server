module widget.controller.form.components.components;

import widget;

class FormComponentsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "components";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/components")
		void components(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/form/components.dt",
			);
		}
		+/
	}
}
