module widget.views.widgets.widget_menu.widget_menu;

import app;

class WidgetWidgetMenu : LiElement{
	string href = "";
	string sa_side_class = "";
	string title = "";

	this(){
		super();
		this.title = "Widgets";
		this.sa_side_class = "sa-side-widget";
		this.href = "/widget";
		this.tag.attr["class"] = "active";
		this.init();
	}

	void init(){
		this ~= anchor;
	}

	SpanElement span(){
		SpanElement s = new SpanElement();
		s.tag.attr["class"] = "menu-item";
		s ~= new Text(this.title);
		return s;
	}

	AElement anchor(){
		AElement a = new AElement();
		a.tag.attr["class"] = this.sa_side_class;
		a.tag.attr["href"] = this.href;
		a ~= this.span();
		return a;
	}
}
