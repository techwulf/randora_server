module widget.controller.table.table;

import widget;

class TableController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "table";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/table/index/index.dt",
			);
		}
	}
}
