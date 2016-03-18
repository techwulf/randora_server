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
		this ~= new DashboardWidget(this._datastructure.dashboards);
		this ~= new WhiterElement();

		this ~= new QuickstatsWidget();
		this ~= new WhiterElement();

		this ~= new BlockArea(this._datastructure.charts);
		this ~= new WhiterElement();
	}

	class BlockArea : BlockAreaElement{
		this(PieChart[] charts){
			super();
			this ~= new Row(charts);
		}

		class Row : RowElement{
			this(PieChart[] charts){
				super();
				this ~= new Col1(8, charts);
				this ~= new Col2(4);
				this ~= new ClearFixElement();
			}

			class Col1 : ColumnElement{
				this(int grid = 12, PieChart[] charts = null){
					super(grid);
					this ~= new Row(charts);
					this ~= new ClearFixElement();
				}

				class Row : RowElement{
					this(PieChart[] charts){
						super();
						this ~= new PieChartWidget(charts);
						this ~= new RecentPostingsWidget();
						this ~= new TasksWidget();
					}

					class RecentPostings : DivElement{
						this(){
							super();
							this.tag.attr["class"] = "col-md-6";
							this ~= new RecentPostingsWidget();
						}
					}

					class Tasks : DivElement{
						this(){
							super();
							this.tag.attr["class"] = "col-md-6";
							this ~= new TasksWidget();
						}
					}
				}

			}

			class Col2 : ColumnElement{
				this(int grid = 12){
					super(grid);
					this ~= new UsaMapWidget();
					//this ~= new DynamicChartWidget();
					//this ~= new ActivityWidget();
					this ~= new ClearFixElement();
				}
			}
		}
	}
}
