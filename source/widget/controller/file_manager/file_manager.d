module widget.controller.file_manager.file_manager;

import widget;

class FileManagerController : WidgetControllerPrototype{
	private FileManagerConnectorController	_connector	= null;
	private FileManagerIndexController		_index		= null;

	@property public FileManagerConnectorController	connector(){ return this._connector; }
	@property public FileManagerIndexController		index(){ return this._index; }

	this(){
		super();
		this.name = "file_manager";

		this._connector	= new FileManagerConnectorController();
		this._index		= new FileManagerIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
