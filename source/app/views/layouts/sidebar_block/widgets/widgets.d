module app.views.layouts.sidebar_block.widgets.widgets;

import app;

class AppLayoutSidebarWidgets : DivElement{
	import user;
	UserWidgetProfile user_profile = null;

	this(){
		super();
		this.tag.attr["class"] = "side-widgets overflow";

		this.user_profile = new UserWidgetProfile();

		this.init();
	}

	void init(){
		this ~= this.user_profile;
		//this ~= this.calendar_sidebar;
		//include widget/calendar/sidebar/calendar
		//include widget/feed/sidebar/feeds
		//include widget/project/widgets/projects
	}
}
