module home.controller.index.index;

import home;

final class IndexController : HomeControllerPrototype{
	LayoutElement view = null;

	string[][] dashboard = [
		["img/shortcuts/money.png",			"Purchases"],
		["img/shortcuts/twitter.png",		"Tweets"],
		["img/shortcuts/calendar.png",		"Calendar"],
		["img/shortcuts/stats.png",			"Statistics"],
		["img/shortcuts/connections.png",	"Connection"],
		["img/shortcuts/reports.png",		"Reports"]
	];

	this(){
		super();
		this.name = "index";

		this.view = new IndexLayout(this.dashboard);

		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			this.render_html(response, this.view);
		}
	}
}
