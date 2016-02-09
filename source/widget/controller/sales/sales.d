module widget.controller.sales.sales;

import widget;

class SalesController : WidgetControllerPrototype{
	private SalesIndexController		_index		= null;
	private SalesMainChartController	_main_chart	= null;
	private SalesPiesController			_pies		= null;
	private SalesQuickStatsController	_quickstats	= null;

	@property public SalesIndexController			index(){ return this._index; }
	@property public SalesMainChartController		main_chart(){ return this._main_chart; }
	@property public SalesPiesController			pies(){ return this._pies; }
	@property public SalesQuickStatsController		quickstats(){ return this._quickstats; }

	this(){
		super();
		this.name = "sales";

		this._index			= new SalesIndexController();
		this._main_chart	= new SalesMainChartController();
		this._pies			= new SalesPiesController();
		this._quickstats	= new SalesQuickStatsController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
