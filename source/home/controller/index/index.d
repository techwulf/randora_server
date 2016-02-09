module home.controller.index.index;

import home;

final class IndexController : HomeControllerPrototype{
	IndexView view = null;

	this(){
		super();
		this.name = "index";

		this.view = new IndexView();

		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			//this.layout.body_block.main_block.content_block.contents = this.view;
			//this.layout.body_block.main_block.content_block.init();
			//this.layout.body_block.main_block.init();
			//this.layout.body_block.init();
			//this.layout.init();

			//string s = this.layout.toString();
			string s = "<!DOCTYPE html>\n" ~ join(this.layout.pretty(3), "\n");

			response.writeBody(s, "text/html");
		}
	}
}
