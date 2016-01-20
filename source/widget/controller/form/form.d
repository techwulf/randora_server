module widget.controller.form.form;

import widget;

class FormController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "form";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/form/index.dt",
			);
		}
	}
}
