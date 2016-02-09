module widget.controller.sales.index.index;

import widget;

class SalesIndexController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "index";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/sales/index/index.dt",
			);
		}
		+/
	}
}
