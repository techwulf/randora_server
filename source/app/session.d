module app.session;

import app;

class AppSession{
	import std.typecons;

	Tuple!(
		//string, "name",
		SessionVar!(bool,	"authenticated"),	"authenticated",
		SessionVar!(int,	"user_id"),			"user_id",
		SessionVar!(string,	"user_name"),		"user_name",
		SessionVar!(string,	"user_password"),	"user_password",
		SessionVar!(string,	"user_email"),		"user_email",
		SessionVar!(string,	"user_avatar"),		"user_avatar",
	) session_vars;
	alias session_vars this;
}