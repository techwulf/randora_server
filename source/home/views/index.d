module home.views.index;

import home;

class IndexView : DivElement{
	this(){
		super();
		this.init();
	}

	void init(){
		this ~= new DashboardWidget();
		this ~= new WhiterElement();
		this ~= new QuickstatsWidget();
		this ~= new WhiterElement();
		this ~= new BlockArea();
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
					RowElement row = new RowElement();
					row ~= new RecentPostingsWidget();
					row ~= new TasksWidget();
					this ~= row;
					this ~= new ClearFixElement();
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
			/+
			DivElement col_1(){
				DivElement c1 = new DivElement();
				c1.tag.attr["class"] = "col-md-6";
				//c1 ~= this.recent_postings;

				DivElement c2 = new DivElement();
				c2.tag.attr["class"] = "col-md-6";
				//c2 ~= this.tasks;

				DivElement r = new DivElement();
				r.tag.attr["class"] = "row";
				r ~= c1;
				r ~= c2;

				DivElement col = new DivElement();
				col.tag.attr["class"] = "col-md-8";
				//col ~= this.main_chart.html()
				//col ~= new PieChart();
				col ~= r;
				//~"<div class='row'>
					//<div class='col-md-6'>"
						//~this.recent_postings.html()
					//~"</div>
					//<div class='col-md-6'>"
						//~this.tasks.html()
					//~"</div>
				//</div>
				col ~= new ClearFixElement();
				return col;
			}
			+/

			class Col2 : ColumnElement{
				this(int grid = 12){
					super(grid);
					this ~= new UsaMapWidget();
					this ~= new DynamicChartWidget();
					this ~= new ActivityWidget();
					this ~= new ClearFixElement();
				}
			}
		}
	}
}
