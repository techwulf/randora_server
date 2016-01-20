module widget.controller.photo_gallery.photo_gallery;

import widget;

class PhotoGalleryController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "photo_gallery";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/photo_gallery/index/index.dt",
			);
		}
	}
}
