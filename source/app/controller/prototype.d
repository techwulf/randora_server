module app.controller.prototype;

import app;

class AppControllerPrototype{
	string name = "";

	URLRouter				router					= null;
	WebInterfaceSettings	web_interface_settings	= null;

	AppSettings	settings	= null;
	AppSession	session		= null;

	AppControllerPrototype[string]	controllers	= null;

	AppLayout layout = null;

	this(){
		this.layout = new AppLayout();

		this.settings	= new AppSettings();
		this.session	= new AppSession();

		this.web_interface_settings = new WebInterfaceSettings;
		this.router = new URLRouter;
	}

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

	protected string render_html(HTTPServerResponse response, LayoutElement view){
		this.layout = new AppLayout();
		this.layout.body_block.main_block.content_block.contents = view;
		this.layout.body_block.main_block.content_block.reset();

		string html = "<!DOCTYPE html>\n" ~ join(this.layout.pretty(3), "\n");
		response.writeBody(html, "text/html");
		return html;
	}
}
