module widget.controller.chart.chart;

import widget;

class ChartController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "chart";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/chart/index.dt",
			);
		}
	}
}
