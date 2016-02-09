module widget.controller.message.message;

import widget;

class MessageController : WidgetControllerPrototype{
	private MessageDetailController	_detail	= null;
	private MessageIndexController	_index	= null;

	@property public MessageDetailController	detail(){ return this._detail; }
	@property public MessageIndexController		index(){ return this._index; }

	this(){
		super();
		this.name = "message";

		this._detail	= new MessageDetailController();
		this._index		= new MessageIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
