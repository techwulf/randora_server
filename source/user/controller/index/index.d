module user.controller.index.index;

import user;

struct UserIndexDatastructure{}

final class IndexController : UserControllerPrototype{
	LayoutElement view = null;

	string[string] datastructure = null;

	this(){
		super();
		this.name = "index";

		this.view = new IndexLayout(UserIndexDatastructure());

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			this.render_html(response, this.view);
		}
	}

	/+
	@method(HTTPMethod.GET){
		@path("/")
		@path("/index")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"user/index/index.dt",
				this.name,
				//this.model
			);
			response.writeBody(
				"asdfasdfassadf",
				"text/plain; charset=UTF-8"
			);
			+/
		}
	}
	+/
}
