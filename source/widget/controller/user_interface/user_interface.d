module widget.controller.user_interface.user_interface;

import widget;

class UserInterfaceController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "user_interface";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/user_interface/index/index.dt",
			);
		}
	}
}
