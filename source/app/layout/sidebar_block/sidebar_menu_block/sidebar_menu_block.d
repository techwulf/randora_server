module app.layout.sidebar_block.sidebar_menu_block.sidebar_menu_block;

import app;

class AppLayoutSidebarMenuBlock : UlElement{
	import home;
	HomeMenuWidget home_menu = null;

	import widget;
	WidgetMenuWidget widget_menu = null;

	this(){
		super();
		this.tag.attr["class"] = "list-unstyled side-menu";
		this.home_menu = new HomeMenuWidget();
		this.widget_menu = new WidgetMenuWidget();
		this.init();
	}

	override void init(){
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
