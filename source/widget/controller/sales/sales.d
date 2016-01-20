module widget.controller.sales.sales;

import widget;

class SalesController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "sales";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/sales/index/index.dt",
			);
		}
	}
}
