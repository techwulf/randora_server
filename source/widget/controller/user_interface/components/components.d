module widget.controller.user_interface.components.components;

import widget;

class UserInterfaceComponentsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "components";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/components")
		void components(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/components/index.dt",
			);
		}
	}
	+/
}
