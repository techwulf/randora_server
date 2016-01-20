module app.session.app;

import app.session;

class AppSession : AppSessionPrototype{
	import std.typecons;
	import vibe.d;

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