module widget.controller.user_interface.labels.labels;

import widget;

class UserInterfaceLabelsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "labels";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/labels")
		void labels(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/labels/index.dt",
			);
		}
	}
	+/
}
