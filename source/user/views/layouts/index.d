module user.views.layouts.index;

import user;

class IndexLayout : LayoutElement{
	UserIndexDatastructure _datastructure;

	this(UserIndexDatastructure datastructure){
		super();
		this._datastructure = datastructure;
		this.init();
	}

	override void init(){
		/+
		this ~= new DashboardWidget(this._datastructure.dashboards);
		this ~= new WhiterElement();

		this ~= new QuickstatsWidget(this._datastructure.quickstats);
		this ~= new WhiterElement();

		this ~= new BlockArea(this._datastructure);
		this ~= new WhiterElement();
		+/
	}
	/+
	class BlockArea : BlockAreaElement{
		this(HomeIndexDatastructure datastructure){
			super();
			this ~= new Row(datastructure);
		}

		class Row : RowElement{
			this(HomeIndexDatastructure datastructure){
				super();
				this ~= new Col1(datastructure, 8);
				this ~= new Col2(datastructure, 4);
				this ~= new ClearFixElement();
			}

			class Col1 : ColumnElement{
				this(HomeIndexDatastructure datastructure, int grid = 12){
					super(grid);
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
					/+
					class Tasks : DivElement{
						this(){
							super();
							this ~= new Sass("col-md-6");
							this ~= new TasksWidget();
						}
					}
					+/
				}

			}

			class Col2 : ColumnElement{
				this(HomeIndexDatastructure datastructure, int grid = 12){
					super(grid);
					this ~= new UsaMapWidget(datastructure.live_visits);
					//this ~= new DynamicChartWidget();
					//this ~= new ActivityWidget();
					this ~= new ClearFixElement();
				}
			}
		}
	}
	+/
}
