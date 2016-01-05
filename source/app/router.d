module app.router;

import app;

class AppRouter{
	URLRouter router = null;
	alias router this;

	this(){
		this.router = new URLRouter;

		this.get("*", serveStaticFiles("./public/"));
	}
}
