module widget.controller.user_interface.buttons.buttons;

import widget;

class UserInterfaceButtonsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "buttons";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/buttons")
		void buttons(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/buttons/index.dt",
			);
		}
	}
	+/
}
