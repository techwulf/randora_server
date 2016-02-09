module widget.controller.user_interface.alerts.alerts;

import widget;

class UserInterfaceAlertsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "alerts";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/alerts")
		void alerts(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/alerts/index.dt",
			);
		}
	}
	+/
}
