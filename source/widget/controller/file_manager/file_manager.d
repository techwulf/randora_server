module widget.controller.file_manager.file_manager;

import widget;

class FileManagerController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "file_manager";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/file_manager/index.dt",
			);
		}
	}
}
