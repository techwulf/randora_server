module widget.controller.video.video;

import widget;

class VideoController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "video";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/video/index.dt",
			);
		}
	}
}
