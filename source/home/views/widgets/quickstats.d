module home.views.widgets.quickstats.quickstats;

import home;

class QuickstatsWidget : BlockAreaElement{
	string title = "";
	QuickStats quickstats;

	this(QuickStats quickstats){
		super();
		this.quickstats = quickstats;
		this.title = this.quickstats.title;
		this.init();
	}

	override void init(){
		this ~= new Title(this.title);

		RowElement row = new RowElement();

		foreach(int i, Stat stat; this.quickstats.stats){
			row ~= new Stats(stat);
		}

		this ~= row;
	}

	class Stats : DivElement{
		this(Stat stat){
			super();
			this.add_class("col-md-3");
			this.add_class("col-xs-6");
			this ~= new Tile(stat);
		}

		class Tile : DivElement{
			this(Stat stat){
				super();
				this.add_class("tile");
				this.add_class("quick-stats");
				if(stat.media){
					this.add_class("media");
				}

				DivElement stats_line = new DivElement();
				import std.conv;
				if(stat.id==1){
					stats_line.Id("stats-line");
				}else{
					stats_line.Id("stats-line-"~to!(string)(stat.id));
				}
				stats_line.add_class("pull-left");
				stats_line ~= new Text("");

				this ~= stats_line;
				this ~= new MediaBody(stat);
			}

			class MediaBody : DivElement{
				this(Stat stat){
					super();
					if(stat.media){
						this.add_class("media-body");
					}else{
						this.add_class("data");
					}

					H2Element h2 = new H2Element();
					import std.conv;
					h2.tag.attr["data_value"] = to!string(stat.value);
					h2 ~= new Text("0");

					SmallElement small = new SmallElement();
					small ~= new Text(stat.title);

					this ~= h2;
					this ~= small;
				}
			}
		}
	}

	class Title : H2Element{
		this(string title){
			super();
			this.add_class("tile-title");
			this ~= new Text(title);
		}
	}
}
