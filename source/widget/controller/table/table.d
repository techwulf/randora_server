module widget.controller.table.table;

import widget;

class TableController : WidgetControllerPrototype{
	private TableIndexController	_index	= null;

	@property public TableIndexController	index(){ return this._index; }

	this(){
		super();
		this.name = "table";

		this._index	= new TableIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
