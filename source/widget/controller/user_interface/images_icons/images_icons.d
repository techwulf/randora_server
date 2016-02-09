module widget.controller.user_interface.images_icons.images_icons;

import widget;

class UserInterfaceImagesIconsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "images_icons";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
	/+
	@method(HTTPMethod.GET){
		@path("")
		@path("/images_icons")
		void images_icons(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/user_interface/images_icons/index.dt",
			);
		}
	}
	+/
}
