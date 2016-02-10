module home.views.index;

import home;

class IndexView : DivElement{
	//HomeWidgetDashboard dashboard = null;

	import widget;
	/+
	WidgetActivity			activity		= null;
	WidgetDynamicChart		dynamic_chart	= null;
	WidgetMainChart			main_chart		= null;
	WidgetPies				pies			= null;
	+/
	//WidgetQuickstats		quickstats		= null;
	/+
	WidgetRecentPostings	recent_postings	= null;
	WidgetTasks				tasks			= null;
	WidgetUsaMap			usa_map			= null;
	+/
	this(){
		super();

		this.init();
	}

	void init(){
		this ~= new HomeWidgetDashboard();
		this ~= new WhiterElement();
		this ~= new WidgetQuickstats();
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
					row ~= new RecentPostings();
					row ~= new Tasks();
					this ~= row;
					this ~= new ClearFixElement();
				}

				class RecentPostings : DivElement{
					this(){
						super();
						this.tag.attr["class"] = "col-md-6";
						this ~= new WidgetRecentPostings();
					}
				}

				class Tasks : DivElement{
					this(){
						super();
						this.tag.attr["class"] = "col-md-6";
						this ~= new WidgetTasks;
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
				//col ~= this.pies.html()
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
					this ~= new WidgetUsaMap;
					//this ~= this.dynamic_chart.html();
					//this ~= this.activity.html();
					this ~= new ClearFixElement();
				}
			}
		}
	}
}
