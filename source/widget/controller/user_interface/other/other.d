module widget.controller.user_interface.other.other;

import widget;

class UserInterfaceOtherController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "other";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/other")
		void other(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/other/index.dt",
			);
		}
	}
	+/
}
