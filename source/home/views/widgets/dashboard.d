module home.views.widgets.dashboard.dashboard;

import home;

class DashboardWidget : DivElement{
	string _title = "";

	string[][] datastructures = [
		["img/shortcuts/money.png", "Purchases"],
		["img/shortcuts/twitter.png", "Tweets"],
		["img/shortcuts/calendar.png", "Calendar"],
		["img/shortcuts/stats.png", "Statistics"],
		["img/shortcuts/connections.png", "Connection"],
		["img/shortcuts/reports.png", "Reports"]
	];

	this(){
		super();
		this._title = "Dashboard";
		this.init();
	}

	override void init(){
		H4Element title = new H4Element(this._title);
		title.add_class("page-title");

		this ~= title;
		this ~= new ShortcutArea(this.datastructures);
	}

	class ShortcutArea : DivElement{
		this(string[][] datastructures){
			super();
			this.add_class("block-area shortcut-area");

			foreach(int key, string[] row; datastructures){
				ImgElement image = new ImgElement();
				image.tag.attr["src"] = row[0]; //TODO: add src attribute to Html5 library. Should access like: this.src = image;
				image.tag.attr["alt"] = row[1]; //TODO: add alt attribute to Html5 library. Should access like: this.alt = "";

				SmallElement title = new SmallElement(row[1]);
				title.add_class("t-overflow");

				AElement anchor = new AElement([
					image,
					title
				]);
				anchor
					.add_class("shortcut")
					.add_class("tile");

				this ~= anchor;
			}
		}
	}
}
