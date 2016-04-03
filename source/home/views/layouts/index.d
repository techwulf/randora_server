module home.views.layouts.index;

import home;

class IndexLayout : LayoutElement{
	HomeIndexDatastructure _datastructure;

	this(HomeIndexDatastructure datastructure){
		super();
		this._datastructure = datastructure;
		this.init();
	}

	override void init(){
		this ~= new DashboardWidget(this._datastructure.dashboard);
		this ~= new WhiterElement();

		this ~= new QuickstatsWidget(this._datastructure.quickstats);
		this ~= new WhiterElement();

		this ~= new DivElement(
			Attributes(null, [new Sass("block-area")]),
			[
				new DivElement(
					Attributes(null, [new BootstrapRow()]),
					[
						new DivElement(
							Attributes(null, [new BootstrapColumn(8)]),
							[
								new DivElement(
									Attributes(null, [new BootstrapRow()]),
									[
										new PieChartWidget(this._datastructure.charts),
										new RecentPostingsWidget(this._datastructure.recent_posting),
										new TasksWidget(this._datastructure.tasks)
									]
								)
							]
						),
						new DivElement(
							Attributes(null, [new BootstrapColumn(4)]),
							[
								new UsaMapWidget(this._datastructure.live_visits),
								//new DynamicChartWidget(),
								//new ActivityWidget(),
								new ClearFixElement()
							]
						)
					]
				)
			]
		);

		this ~= new WhiterElement();
	}
}
