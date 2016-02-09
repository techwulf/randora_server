module widget.controller.user_interface.media.media;

import widget;

class UserInterfaceMediaController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "media";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/media")
		void media(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/media/index.dt",
			);
		}
	}
	+/
}
