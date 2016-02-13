module home.views.widgets.pie_chart.pie_chart;

import home;

class PieChartWidget : DivElement{
	this(){
		super();
		this.tag.attr["class"] = "tile text-center";
		init();
	}
	override void init(){
		this ~= new Tiles();
	}
	class Tiles : DivElement {
		this(){
			super();
			this.tag.attr["class"] = "tile-dark p-10";
			this ~= new PieA();
			this ~= new PieB();
			this ~= new PieC();
			this ~= new PieD();
			this ~= new PieE();
		}
		class PieA : DivElement {
			this(){
				super();
				this.tag.attr["class"] = "pie-chart-tiny";
				this.tag.attr["data-percent"] = "86";
				this ~= new Percent();
				this ~= new Chart();
			}
			class Percent : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "percent";
				}
			}
			class Chart : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "pie-title";
					this ~= new Text("New Visitors");
					this ~= new Retweet();
				}
				class Retweet : IElement {
					this(){
						super();
						this.tag.attr["class"] = "m-l-5 fa fa-retweet";
					}
				}
			}
		}
		class PieB : DivElement {
			this(){
				super();
				this.tag.attr["class"] = "pie-chart-tiny";
				this.tag.attr["data-percent"] = "23";
				this ~= new Percent();
				this ~= new Chart();
			}
			class Percent : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "percent";
				}
			}
			class Chart : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "pie-title";
					this ~= new Text("Bounce Rate");
					this ~= new Retweet();
				}
				class Retweet : IElement {
					this(){
						super();
						this.tag.attr["class"] = "m-l-5 fa fa-retweet";
					}
				}
			}
		}
		class PieC : DivElement {
			this(){
				super();
				this.tag.attr["class"] = "pie-chart-tiny";
				this.tag.attr["data-percent"] = "57";
				this ~= new Percent();
				this ~= new Chart();
			}
			class Percent : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "percent";
				}
			}
			class Chart : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "pie-title";
					this ~= new Text("Emails Sent");
					this ~= new Retweet();
				}
				class Retweet : IElement {
					this(){
						super();
						this.tag.attr["class"] = "m-l-5 fa fa-retweet";
					}
				}
			}
		}
		class PieD : DivElement {
			this(){
				super();
				this.tag.attr["class"] = "pie-chart-tiny";
				this.tag.attr["data-percent"] = "34";
				this ~= new Percent();
				this ~= new Chart();
			}
			class Percent : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "percent";
				}
			}
			class Chart : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "pie-title";
					this ~= new Text("Sales Rate");
					this ~= new Retweet();
				}
				class Retweet : IElement {
					this(){
						super();
						this.tag.attr["class"] = "m-l-5 fa fa-retweet";
					}
				}
			}
		}
		class PieE : DivElement {
			this(){
				super();
				this.tag.attr["class"] = "pie-chart-tiny";
				this.tag.attr["data-percent"] = "81";
				this ~= new Percent();
				this ~= new Chart();
			}
			class Percent : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "percent";
				}
			}
			class Chart : SpanElement {
				this(){
					super();
					this.tag.attr["class"] = "pie-title";
					this ~= new Text("New Signups");
					this ~= new Retweet();
				}
				class Retweet : IElement {
					this(){
						super();
						this.tag.attr["class"] = "m-l-5 fa fa-retweet";
					}
				}
			}
		}
	}
}
