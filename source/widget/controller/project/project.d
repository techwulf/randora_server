module widget.controller.project.project;

import widget;

class ProjectController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "project";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("")
		@path("/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			render!(
				"widget/project/index/index.dt",
			);
		}
	}
}
