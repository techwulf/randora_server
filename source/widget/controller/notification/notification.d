module widget.controller.notification.notification;

import widget;

class NotificationController : WidgetControllerPrototype{
	private NotificationDrawerController	_drawer	= null;
	private NotificationIndexController		_index	= null;

	@property public NotificationDrawerController	drawer(){ return this._drawer; }
	@property public NotificationIndexController	index(){ return this._index; }

	this(){
		super();
		this.name = "notification";

		this._drawer	= new NotificationDrawerController();
		this._index		= new NotificationIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
