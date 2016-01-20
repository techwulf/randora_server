module widget.controller.message.message;

import widget;

class MessageController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "message";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/message/index/index.dt",
			);
		}
	}
}
