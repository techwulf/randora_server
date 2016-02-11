module widget.views.widgets.usa_map.usa_map;

import widget;

class WidgetUsaMap : DivElement{
    string title = "";
	this(){
		super();
        this.tag.attr["class"] = "tile";
        this.title = "Live Visits";
		init();
	}

	void init(){
        this ~= new Title(this.title);
        this ~= new Config();
        this ~= new Map();
    }

    class Title : H2Element {
        this(string title){
            super();
            this.tag.attr["class"] = "tile-title";
            this ~= new Text(title);
        }
    }

    class Config : DivElement {
        this(){
            super();
            this.tag.attr["class"] = "tile-config dropdown";
            this ~= new Menu();
            this ~= new DropMenu();
        }

        class Menu : AElement {
            this(){
                super();
                this.tag.attr["data-toggle"] = "dropdown";
                this.tag.attr["href"] = "";
                this.tag.attr["class"] = "tile-menu";
            }
        }

        class DropMenu : UlElement {
            this(){
                super();
                this.tag.attr["class"] = "dropdown-menu pull-right text-right";
                this ~= new Refresh();
                this ~= new Settings();
            }

            class Refresh : LiElement {
                this(){
                    super();
                    this.tag.attr["href"] = "";
                    this ~= new Text("Refresh");
                }
            }

            class Settings : LiElement {
                this(){
                    super();
                    this.tag.attr["href"] = "";
                    this ~= new Text("Settings");
                }
            }
        }
        
    }
    class Map : DivElement {
        this(){
            super();
            this.tag.attr["id"] = "usa-map";
        }
    }
}
