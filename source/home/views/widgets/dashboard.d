module home.views.widgets.dashboard.dashboard;

import home;

class DashboardWidget : DivElement{
	string _title = "Dashboard";
	string[][] _datastructure = null;

	this(string[][] datastructure){
		super();
		this._datastructure = datastructure;
		this.init();
	}

	override void init(){
		this ~= new H4Element(
			Attributes(null, ["page-title"]),
			this._title
		);
		this ~= new ShortcutArea(this._datastructure);
	}

	class ShortcutArea : DivElement{
		this(string[][] datastructure){
			super(Attributes(null, ["block-area","shortcut-area"]), "");

			foreach(int key, string[] row; datastructure){
				this ~= new AElement(
					Attributes(null, ["shortcut", "tile"]),
					[
						new ImgElement(
							Attributes(null,null,["src" : row[0], "alt" : row[1]]),
							""
						),
						new SmallElement(
							Attributes(null,["t-overflow"]),
							row[1]
						)
					]
				);
			}
		}
	}
}
