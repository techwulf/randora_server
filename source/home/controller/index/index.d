module home.controller.index.index;

import home;

final class IndexController : HomeControllerPrototype{
	LayoutElement view = null;

	string[string] datastructure = null;

	this(){
		super();
		this.name = "index";

		this.view = new IndexLayout(HomeIndexDatastructure());

		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			this.render_html(response, this.view);
		}
	}
}
