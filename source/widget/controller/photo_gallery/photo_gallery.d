module widget.controller.photo_gallery.photo_gallery;

import widget;

class PhotoGalleryController : WidgetControllerPrototype{
	private PhotoGalleryIndexController	_index	= null;

	@property public PhotoGalleryIndexController	index(){ return this._index; }

	this(){
		super();
		this.name = "photo_gallery";

		this._index	= new PhotoGalleryIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
