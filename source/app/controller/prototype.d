module app.controller.prototype;

import app;

class AppControllerPrototype{
	string name = "";

	URLRouter				router					= null;
	WebInterfaceSettings	web_interface_settings	= null;

	AppSettings	settings	= null;
	AppSession	session		= null;
	
	AppControllerPrototype[string]	controllers	= null;

	this(){
		this.settings	= new AppSettings();
		this.session	= new AppSession();

		this.web_interface_settings = new WebInterfaceSettings;
		this.router = new URLRouter;
	}

	//protected void init(){
	//	this.web_interface_settings.urlPrefix = "/"~this.name;
	//	this.router.registerWebInterface(this, this.web_interface_settings);
	//}

	protected void add_controller(AppControllerPrototype controller){
		this.controllers[controller.name] = controller;
		this.router.any("*", controller.router);
	}

	void listen(){
		listenHTTP(
			this.settings,
			this.router
		);
	}
}