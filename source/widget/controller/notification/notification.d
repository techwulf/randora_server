module widget.controller.notification.notification;

import widget;

class NotificationController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "notification";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/notification/index/index.dt",
			);
		}
	}
}
