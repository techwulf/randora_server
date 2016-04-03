module home.views.widgets.usa_map.usa_map;

import home;

struct LiveVisits{
	string title = "";
}

class UsaMapWidget : DivElement{
	LiveVisits live_visits;

	this(LiveVisits live_visits){
		super();
		this ~= new Sass("tile");
		this.live_visits = live_visits;
		init();
	}

	override void init(){
		this ~= new Title(this.live_visits.title);
		this ~= new Config();
		this ~= new DivElement(Attributes("usa-map"),"");
	}

	class Title : H2Element {
		this(string title){
			super();
			this ~= new Sass("tile-title");
			this ~= new Text(title);
		}
	}

	class Config : DivElement {
		this(){
			super();
			this ~= new Sass("tile-config");
			this ~= new Sass("dropdown");
			this ~= new Menu();
			this ~= new DropMenu();
		}

		class Menu : AElement {
			this(){
				super();
				this.tag.attr["data-toggle"] = "dropdown";
				this.Href("");
				this ~= new Sass("tile-menu");
				this ~= new Text("");
			}
		}
		class DropMenu : UlElement {
			this(){
				super();
				this ~= new Sass("dropdown-menu");
				this ~= new Sass("pull-right");
				this ~= new Sass("text-right");
				this ~= new Refresh();
				this ~= new Settings();
			}
			class Refresh : LiElement{
				this(){
					super();
					this.tag.attr["href"] = "";
					this ~= new Text("Refresh");
				}
			}
			class Settings : LiElement {
				this(){
					super();
					//this.Href("");
					this ~= new Text("Settings");
				}
			}
		}
	}
}
