module widget.controller.page.list.list;

import widget;

class PageListController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "list";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/list")
		void list(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/page/list/index.dt",
			);
		}
		+/
	}
}
