module widget.controller.user_interface.user_interface;

import widget;

class UserInterfaceController : WidgetControllerPrototype{
	private UserInterfaceAlertsController		_alerts			= null;
	private UserInterfaceButtonsController		_buttons		= null;
	private UserInterfaceComponentsController	_components		= null;
	private UserInterfaceImagesIconsController	_images_icons	= null;
	private UserInterfaceIndexController		_index			= null;
	private UserInterfaceLabelsController		_labels			= null;
	private UserInterfaceMediaController		_media			= null;
	private UserInterfaceOtherController		_other			= null;

	@property public UserInterfaceAlertsController			alerts(){ return this._alerts; }
	@property public UserInterfaceButtonsController			buttons(){ return this._buttons; }
	@property public UserInterfaceComponentsController		components(){ return this._components; }
	@property public UserInterfaceImagesIconsController		images_icons(){ return this._images_icons; }
	@property public UserInterfaceIndexController			index(){ return this._index; }
	@property public UserInterfaceLabelsController			labels(){ return this._labels; }
	@property public UserInterfaceMediaController			media(){ return this._media; }
	@property public UserInterfaceOtherController			other(){ return this._other; }

	this(){
		super();
		this.name = "user_interface";

		//this._alerts		= new UserInterfaceAlertsController();
		//this._buttons		= new UserInterfaceButtonsController();
		//this._components	= new UserInterfaceComponentsController();
		//this._images_icons	= new UserInterfaceImagesIconsController();
		this._index			= new UserInterfaceIndexController();
		//this._labels		= new UserInterfaceLabelsController();
		//this._media			= new UserInterfaceMediaController();
		//this._other			= new UserInterfaceOtherController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
