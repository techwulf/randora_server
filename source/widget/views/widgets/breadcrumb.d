module widget.views.widgets.breadcrumb;

import app;

class WidgetBreadCrumb : OlElement{
	this(){
		super();
		this.tag.attr["class"] = "breadcrumb hidden-xs";

		this.init();
	}

	void init(){
		AElement a_home = new AElement();
		a_home.tag.attr["href"] = "#";
		a_home ~= new Text("Home");

		LiElement li_home = new LiElement();
		li_home ~= a_home;

		AElement a_library = new AElement();
		a_library.tag.attr["href"] = "#";
		a_library ~= new Text("Library");

		LiElement li_library = new LiElement();
		li_library ~= a_library;

		LiElement li_data = new LiElement();
		li_data.tag.attr["class"] = "active";
		li_data ~= new Text("Data");

		this ~= li_home;
		this ~= li_library;
		this ~= li_data;
	}
}
