module widget.controller.message.detail.detail;

import widget;

class MessageDetailController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "detail";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/detail")
		void detail(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/message/detail.dt",
			);
		}
		+/
	}
}
