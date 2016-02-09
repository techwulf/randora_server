module app.views.layouts.layout.sidebar_block.sidebar_menu_block.sidebar_menu_block;

import app;

class AppLayoutSidebarMenuBlock : UlElement{
	import home.views.widgets;
	HomeWidgetMenu home_menu = null;

	import widget.views.widgets;
	WidgetWidgetMenu widget_menu = null;

	this(){
		super();
		this.tag.attr["class"] = "list-unstyled side-menu";
		this.home_menu = new HomeWidgetMenu();
		this.widget_menu = new WidgetWidgetMenu();
		this.init();
	}

	void init(){
		this ~= this.home_menu;
		this ~= this.widget_menu;
		//include widget/typography/menu/menu
		//include widget/menu/menu
		//include widget/table/menu/menu
		//include widget/form/menu/menu
		//include widget/user_interface/menu/menu
		//include widget/photo_gallery/menu/menu
		//include widget/chart/menu/menu
		//include widget/file_manager/menu/menu
		//include widget/calendar/menu/menu
		//include widget/page/menu/menu
	}
}
