module widget.controller.video.video;

import widget;

class VideoController : WidgetControllerPrototype{
	private VideoIndexController	_index	= null;

	@property public VideoIndexController	index(){ return this._index; }

	this(){
		super();
		this.name = "video";

		this._index	= new VideoIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
