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

		this ~= new BlockArea(this._datastructure);
		this ~= new WhiterElement();
	}

	class BlockArea : BlockAreaElement{
		this(HomeIndexDatastructure datastructure){
			super();
			this ~= new Row(datastructure);
		}

		class Row : RowElement{
			this(HomeIndexDatastructure datastructure){
				super();
				this ~= new Col1(datastructure);
				this ~= new Col2(datastructure);
				this ~= new ClearFixElement();
			}

			class Col1 : BootstrapColumn!(DivElement){
				this(HomeIndexDatastructure datastructure){
					this.md = 8;
					super();
					this ~= new Row(datastructure);
					this ~= new ClearFixElement();
				}

				class Row : RowElement{
					this(HomeIndexDatastructure datastructure){
						super();
						this ~= new PieChartWidget(datastructure.charts);
						this ~= new RecentPostingsWidget(datastructure.recent_posting);
						this ~= new TasksWidget(datastructure.tasks);
					}
				}
			}

			class Col2 : BootstrapColumn!(DivElement){
				this(HomeIndexDatastructure datastructure){
					this.md = 4;
					super();
					this ~= new UsaMapWidget(datastructure.live_visits);
					//this ~= new DynamicChartWidget();
					//this ~= new ActivityWidget();
					this ~= new ClearFixElement();
				}
			}
		}
	}
}
