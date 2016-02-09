module widget.controller.project.projects.projects;

import widget;

class ProjectProjectsController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "projects";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/projects")
		void projects(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/project/projects/index.dt",
			);
		}
		+/
	}
}
