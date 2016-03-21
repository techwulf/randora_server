module home.views.widgets.pie_chart.pie_chart;

import home;

class PieChartWidget : DivElement{
	PieChart[] charts = null;

	this(PieChart[] charts = null){
		super();
		this.add_class("tile");
		this.add_class("text-center");

		this.charts = charts;
		init();
	}

	override void init(){
		this ~= new Tiles(this.charts);
	}

	class Tiles : DivElement{
		this(PieChart[] charts){
			super();
			this.add_class("tile-dark");
			this.add_class("p-10");

			foreach(int i, PieChart chart; charts){
				this ~= new Pie(chart.percent, chart.name);
			}
		}

		class Pie : DivElement{
			import std.conv;
			int percent = 0;
			string title = "";

			this(int percent = 0, string title = ""){
				super();
				this.add_class("pie-chart-tiny");
				this.percent = percent;
				this.title = title;
				this.tag.attr["data-percent"] = to!(string)(this.percent);

				this ~= new SpanElement(
					Attributes(
						null,
						["percent"]
					),
					""
				);

				//Chart
				SpanElement span = new SpanElement(
					Attributes(
						null,
						["pie-title"]
					),
					""
					/+
					//TODO: Retweet block causes rendering glitches
					[
						//Retweet
						new IElement(
							Attributes(
								null,
								["m-l-5", "fa", "fa-retweet"]
							),
							null
						)
					]+/

				);
				span ~= new Text(this.title);
				this ~= span;
			}
		}
	}
}
