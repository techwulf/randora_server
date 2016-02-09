module app.views.layouts.layout.content_block.content_block;

import app;

class AppLayoutContentBlock : SectionElement{
	//import html5;
	//Element contents = null;

	import home;
	IndexView contents = null;

	import user;
	UserFormsLogin login = null;
	UserFormsLogout logout = null;

	import widget;
	WidgetMessageDrawer message_drawer = null;
	WidgetNotificationDrawer notification_drawer = null;
	WidgetBreadCrumb breadcrumb = null;
	WidgetChat chat = null;

	this(){
		super();
		this.tag.attr["class"] = "container";
		this.tag.attr["id"] = "content";

		this.login	= new UserFormsLogin();
		this.logout	= new UserFormsLogout();

		this.message_drawer			= new WidgetMessageDrawer();
		this.notification_drawer	= new WidgetNotificationDrawer();
		this.breadcrumb				= new WidgetBreadCrumb();
		this.chat					= new WidgetChat();

		this.contents	= new IndexView();

		this.init();
	}

	void init(){
		this ~= this.message_drawer;
		this ~= this.notification_drawer;
		this ~= this.breadcrumb;

		if(true){
			this ~= this.login;
		}else{
			this ~= this.logout;
		}

		this ~= this.contents;

		this ~= this.chat;
	}
}
