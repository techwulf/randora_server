module widget.controller.page.page;

import widget;

class PageController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "page";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/page/index/index.dt",
			);
		}
	}
}
