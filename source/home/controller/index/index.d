module home.controller.index.index;

import home;

struct PieChart{
	string name = "";
	int percent = 0;
}

struct Dashboard{
	string uri = "";
	string name = "";
}

struct HomeIndexDatastructure{
	Dashboard[] dashboards = [
		{"img/shortcuts/money.png",			"Purchases"},
		{"img/shortcuts/twitter.png",		"Tweets"},
		{"img/shortcuts/calendar.png",		"Calendar"},
		{"img/shortcuts/stats.png",			"Statistics"},
		{"img/shortcuts/connections.png",	"Connection"},
		{"img/shortcuts/reports.png",		"Reports"}
	];

	PieChart[] charts = [
		{
			name : "New Visitors",
			percent : 86
		},
		{
			name : "Bounce Rate",
			percent : 23
		},
		{
			name : "Emails Sent",
			percent : 57
		},
		{
			name : "Sales Rate",
			percent : 37
		},
		{
			name : "New Signups",
			percent : 81
		}
	];
}

final class IndexController : HomeControllerPrototype{
	LayoutElement view = null;

	string[string] datastructure = null;

	this(){
		super();
		this.name = "index";

		this.view = new IndexLayout(HomeIndexDatastructure());

		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			this.render_html(response, this.view);
		}
	}
}
