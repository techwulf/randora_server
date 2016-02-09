module widget.controller.notification.drawer.drawer;

import widget;

class NotificationDrawerController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "drawer";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/drawer")
		void drawer(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/notification/drawer/index.dt",
			);
		}
		+/
	}
}
