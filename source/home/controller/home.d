module home.controller.home;

import home;

class HomeController : HomePrototypeController{
	private IndexController _index = null;
	
	@property public IndexController index(){ return this._index; }
	
	this(){
		super();
		this.name = "home";

		this._index = new IndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}