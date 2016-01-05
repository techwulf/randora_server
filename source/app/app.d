module app.app;

import app;

class App{
	AppRouter	router		= null;
	AppSettings	settings	= null;
	AppSession	session		= null;
	AppVars		vars		= null;
	
	CalendarController		calendar		= null;
	ChartController			chart			= null;
	FileManagerController	file_manager	= null;
	FormController			form			= null;
	HomeController			home			= null;
	MessageController		message			= null;
	NotificationController	notification	= null;
	PageController			page			= null;
	PhotoGalleryController	photo_gallery	= null;
	ProjectController		project			= null;
	SalesController			sales			= null;
	TableController			table			= null;
	TypographyController	typography		= null;
	UserController			user			= null;
	UserInterfaceController	user_interface	= null;
	VideoController			video			= null;
	WidgetController		widget			= null;

	this(){
		this.router		= new AppRouter();
		this.settings	= new AppSettings();
		this.session	= new AppSession();
		this.vars		= new AppVars();
		
		this.calendar		= new CalendarController(this);
		this.chart			= new ChartController(this);
		this.file_manager	= new FileManagerController(this);
		this.form			= new FormController(this);
		this.home			= new HomeController(this);
		this.message		= new MessageController(this);
		this.notification	= new NotificationController(this);
		this.page			= new PageController(this);
		this.photo_gallery	= new PhotoGalleryController(this);
		this.project		= new ProjectController(this);
		this.sales			= new SalesController(this);
		this.table			= new TableController(this);
		this.typography		= new TypographyController(this);
		this.user			= new UserController(this);
		this.user_interface	= new UserInterfaceController(this);
		this.widget			= new WidgetController(this);
		
		listenHTTP(
			this.settings,
			this.router
		);
	}
}