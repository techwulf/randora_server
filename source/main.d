module main;

import app;
import benchmark;
import home;
import user;
import widget;

class MainController : AppController{
	private BenchmarkController	_benchmark	= null;
	private HomeController		_home		= null;
	private UserController		_user		= null;
	private WidgetController	_widget		= null;

	@property public BenchmarkController	benchmark(){ return this._benchmark; }
	@property public HomeController			home(){ return this._home; }
	@property public UserController			user(){ return this._user; }
	@property public WidgetController		widget(){ return this._widget; }

	this(){
		super();

		this.web_interface_settings.urlPrefix = "/";

		this._benchmark	= new BenchmarkController();
		this._home		= new HomeController();
		this._user		= new UserController();
		this._widget	= new WidgetController();

		this.router.get("*", serveStaticFiles("./public/"));
		this.router.get("/", &this.home.index.getIndex);
		this.router.get("/home/", &this.home.index.getIndex);
		this.router.get("/user/", &this.user.index.getIndex);

		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}

shared static this(){
	MainController main = new MainController();
	main.listen();
}
