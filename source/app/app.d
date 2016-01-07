module app.app;

import app;

class App{
	AppRouter	router		= null;
	AppSettings	settings	= null;
	AppSession	session		= null;
	AppVars		vars		= null;
	
	BenchmarkController	benchmark	= null;
	HomeController		home		= null;
	UserController		user		= null;
	WidgetController	widget		= null;

	this(){
		this.router		= new AppRouter();
		this.settings	= new AppSettings();
		this.session	= new AppSession();
		this.vars		= new AppVars();
		
		this.benchmark		= new BenchmarkController(this);
		this.home			= new HomeController(this);
		this.user			= new UserController(this);
		this.widget			= new WidgetController(this);
		
		listenHTTP(
			this.settings,
			this.router
		);
	}
}