module widget.controller.sales.pies.pies;

import widget;

class SalesPiesController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "pies";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/pies")
		void pies(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/sales/pies/index.dt",
			);
		}
		+/
	}
}
