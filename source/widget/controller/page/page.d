module widget.controller.page.page;

import widget;

class PageController : WidgetControllerPrototype{
	private PageIndexController	_index	= null;
	private PageListController	_list	= null;

	@property public PageIndexController	index(){ return this._index; }
	@property public PageListController		list(){ return this._list; }

	this(){
		super();
		this.name = "page";

		this._index	= new PageIndexController();
		this._list	= new PageListController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
