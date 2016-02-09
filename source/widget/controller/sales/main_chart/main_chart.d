module widget.controller.sales.main_chart.main_chart;

import widget;

class SalesMainChartController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "main_chart";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/main_chart")
		void main_chart(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/sales/main_chart/index.dt",
			);
		}
		+/
	}
}
