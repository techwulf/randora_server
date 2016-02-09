module widget.controller.chart.chart;

import widget;

class ChartController : WidgetControllerPrototype{
	private ChartIndexController	_index	= null;

	@property public ChartIndexController	index(){ return this._index; }

	this(){
		super();
		this.name = "chart";

		this._index	= new ChartIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
