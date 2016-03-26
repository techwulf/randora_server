module home.views.widgets.quickstats.quickstats;

import home;

struct Stat{
	int id = 0;
	int value = 0;
	string title = "";
	bool media = true;
}

struct QuickStats{
	string title = "";
	Stat[] stats = null;
}

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
			this ~= new Sass("col-md-3");
			this ~= new Sass("col-xs-6");
			this ~= new Tile(stat);
		}

		class Tile : DivElement{
			this(Stat stat){
				super();
				this ~= new Sass("tile");
				this ~= new Sass("quick-stats");
				if(stat.media){
					this ~= new Sass("media");
				}

				DivElement stats_line = new DivElement();
				import std.conv;
				if(stat.id==1){
					stats_line.Id("stats-line");
				}else{
					stats_line.Id("stats-line-"~to!(string)(stat.id));
				}
				stats_line ~= new Sass("pull-left");
				stats_line ~= new Text("");

				this ~= stats_line;
				this ~= new MediaBody(stat);
			}

			class MediaBody : DivElement{
				this(Stat stat){
					super();
					if(stat.media){
						this ~= new Sass("media-body");
					}else{
						this ~= new Sass("data");
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
			this ~= new Sass("tile-title");
			this ~= new Text(title);
		}
	}
}
