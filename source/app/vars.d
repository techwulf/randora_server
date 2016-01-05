module app.vars;

import app;

class AppVars{
	import std.typecons;

	Tuple!(
		string, "name",
		//SessionVar!(bool, "authenticated"), "authenticated",
	) app_vars;
	alias app_vars this;
}