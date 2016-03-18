module home.views.widgets.dashboard.dashboard;

import home;

class DashboardWidget : DivElement{
	string _title = "Dashboard";
	Dashboard[] dashboards = null;

	this(Dashboard[] dashboards){
		super();
		this.dashboards = dashboards;
		this.init();
	}

	override void init(){
		this ~= new H4Element(
			Attributes(null, ["page-title"]),
			this._title
		);
		this ~= new ShortcutArea(this.dashboards);
	}

	class ShortcutArea : DivElement{
		this(Dashboard[] dashboards){
			super();
			this.add_class("block-area");
			this.add_class("shortcut-area");

			foreach(int i, Dashboard dashboard; dashboards){
				this ~= new AElement(
					Attributes(null, ["shortcut", "tile"]),
					[
						new ImgElement(
							Attributes(
								null,
								null,
								[
									"src" : dashboard.uri,
									"alt" : dashboard.name
								]
							),
							""
						),
						new SmallElement(
							Attributes(
								null,
								[
									"t-overflow"
								]
							),
							dashboard.name
						)
					]
				);
			}
		}
	}
}
