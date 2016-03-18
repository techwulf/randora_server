module app.controller.app;

import app;

class AppController : DeepmagicController!(AppLayout){
	this(){
		super();
		this.layout		= new AppLayout();
		this.settings	= new AppSettings();
		this.session	= new AppSession();
	}
}
