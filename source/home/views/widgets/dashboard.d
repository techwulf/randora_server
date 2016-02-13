module home.views.widgets.dashboard.dashboard;

import home;

class DashboardWidget : DivElement{
	string _title = "";

	this(){
		super();
		this._title = "Dashboard";
		this.init();
	}

	override void init(){
		this ~= new Title(this._title);
		this ~= new ShortcutArea();
	}

	class ShortcutArea : DivElement{
		this(){
			super();
			this.tag.attr["class"] = "block-area shortcut-area";
			this ~= new Shortcut("img/shortcuts/money.png", "Purchases");
			this ~= new Shortcut("img/shortcuts/twitter.png", "Tweets");
			this ~= new Shortcut("img/shortcuts/calendar.png", "Calendar");
			this ~= new Shortcut("img/shortcuts/stats.png", "Statistics");
			this ~= new Shortcut("img/shortcuts/connections.png", "Connection");
			this ~= new Shortcut("img/shortcuts/reports.png", "Reports");
		}

		class Shortcut : AElement{
			this(string image, string title){
				super();
				this.tag.attr["class"] = "shortcut tile";
				this.tag.attr["href"] = "";
				this ~= new Img(image);
				this ~= new Small(title);
			}

			class Img : ImgElement{
				this(string image){
					super();
					this.tag.attr["src"] = image;
					this.tag.attr["alt"] = "";
				}
			}

			class Small : SmallElement{
				this(string title){
					super();
					this.tag.attr["class"] = "t-overflow";
					this ~= new Text(title);
				}
			}
		}
	}

	class Title : H4Element{
		this(string title){
			super();
			this.tag.attr["class"] = "page-title";
			this ~= new Text(title);
		}
	}
}
