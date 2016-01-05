module app.page;

import app;

class PageVars{
	import std.typecons;

	Tuple!(
		string, "name",
		string, "actor",
		string, "action",
	) page_vars;
	alias page_vars this;
}