module widget.views.widgets.quickstats.quickstats;

import widget;

class WidgetQuickstats : BlockAreaElement{
	string title = "";

	this(){
		super();
		this.title = "Quick Stats";
		this.init();
	}

	void init(){
		this ~= new Title(this.title);

		RowElement row = new RowElement();

		row ~= new Stats("stats-line-2", "98", "Tickets Today");
		row ~= new Stats("stats-line-3", "1452", "Shipments Today", "media");
		row ~= new Stats("stats-line-4", "4896", "Orders Today", "media");
		row ~= new Stats("stats-line", "29356", "Site Visits Today", "media");

		this ~= row;
	}

	class Stats : DivElement{
		this(string id, string data_value, string text, string media = ""){
			super();
			this.tag.attr["class"] = "col-md-3 col-xs-6";
			this ~= new Tile(id, data_value, text, media);
		}

		class Tile : DivElement{
			this(string id, string data_value, string text, string media = ""){
				super();
				this.tag.attr["class"] = "tile quick-stats " ~ media;

				DivElement stats_line = new DivElement();
				stats_line.tag.attr["id"] = id;
				stats_line.tag.attr["class"] = "pull-left";
				stats_line ~= new Text("");

				this ~= stats_line;
				this ~= new MediaBody(data_value, text, media);
			}

			class MediaBody : DivElement{
				this(string data_value, string text, string media){
					super();
					if(media == ""){
						this.tag.attr["class"] = "data";
					}else{
						this.tag.attr["class"] = "media-body";
					}

					H2Element h2 = new H2Element();
					h2.tag.attr["data_value"] = data_value;
					h2 ~= new Text("0");

					SmallElement small = new SmallElement();
					small ~= new Text(text);

					this ~= h2;
					this ~= small;
				}
			}
		}
	}

	class Title : H2Element{
		this(string title){
			super();
			this.tag.attr["class"] = "tile-title";
			this ~= new Text(title);
		}
	}
}
