module home.views.layouts.index;

import home;

class IndexLayout : LayoutElement{
	string[][] _datastructure = null;

	this(string[][] datastructure = null){
		super();
		this._datastructure = datastructure;
		this.init();
	}

	override void init(){
		this ~= new DashboardWidget(this._datastructure);
		this ~= new WhiterElement();

		this ~= new QuickstatsWidget();
		this ~= new WhiterElement();

		this ~= new PieChartWidget();
		this ~= new WhiterElement();

		this ~= new BlockArea();
		this ~= new WhiterElement();
	}

	class BlockArea : BlockAreaElement{
		this(){
			super();
			this ~= new Row();
		}

		class Row : RowElement{
			this(){
				super();
				this ~= new Col1(8);
				this ~= new Col2(4);
				this ~= new ClearFixElement();
			}

			class Col1 : ColumnElement{
				this(int grid = 12){
					super(grid);
					this ~= new Row();
					this ~= new ClearFixElement();
				}

				class Row : RowElement{
					this(){
						super();
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
