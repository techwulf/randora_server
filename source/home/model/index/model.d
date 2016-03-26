module home.model.index.model;

import home;

struct HomeIndexDatastructure{
	PieChart[] charts = [
		{"New Visitors", 86},
		{"Bounce Rate", 23},
		{"Emails Sent", 57},
		{"Sales Rate", 37},
		{"New Signups", 81}
	];

	DashboardDatastructure dashboard = {
		[
			{"/img/shortcuts/money.png",		"Purchases"},
			{"/img/shortcuts/twitter.png",		"Tweets"},
			{"/img/shortcuts/calendar.png",		"Calendar"},
			{"/img/shortcuts/stats.png",		"Statistics"},
			{"/img/shortcuts/connections.png",	"Connection"},
			{"/img/shortcuts/reports.png",		"Reports"}
		]
	};

	QuickStats quickstats = {
		title : "Quick Stats",
		stats : [
			{1, 98, "Tickets Today", false},
			{2, 1452, "Shipments Today", true},
			{3, 4896, "Orders Today", true},
			{4, 29356, "Site Visits Today", true}
		]
	};

	RecentPost recent_posting = {
		"Recent Postings",
		[
			{0, "/img/profile-pics/1.jpg", "2 Hours ago", "Adrien San", "Cras molestie fermentum nibh, ac semper"},
			{1, "/img/profile-pics/2.jpg", "5 Hours ago", "David Villa", "Suspendisse in purus ut nibh placerat"},
			{2, "/img/profile-pics/3.jpg", "15/12/2013", "Mitch bradberry", "Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra"},
			{3, "/img/profile-pics/4.jpg", "14/12/2013", "Mitch bradberry", "Cras pulvinar euismod nunc quis gravida."},
			{4, "/img/profile-pics/5.jpg", "13/12/2013", "Mitch bradberry", "Integer a eros dapibus, vehicula quam accumsan, tincidunt purus"}
		]
	};

	LiveVisits live_visits = {title : "Live Visits"};

	Tasks tasks = {
		"Tasks To Do",
		[
			{0, "Curabitur quis nisi ut nunc gravida suscipis"},
			{1, "Suscipit at feugiat dewoo"},
			{2, "Gravida wendy lorem ipsum seen"},
			{3, "Fedrix quis nisi ut nunc gravida suscipit at feugiat purus"}
		]
	};
}
