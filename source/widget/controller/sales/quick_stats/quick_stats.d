module widget.controller.sales.quick_stats.quick_stats;

import widget;

class SalesQuickStatsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "quick_stats";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/quick_stats")
		void quick_stats(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/sales/quick_stats/index.dt",
			);
		}
		+/
	}
}
