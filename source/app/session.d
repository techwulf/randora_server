module app.session;

import app;

class AppSession{
	import std.typecons;

	Tuple!(
		//string, "name",
		SessionVar!(bool, "authenticated"), "authenticated",
	) session_vars;
	alias session_vars this;
}