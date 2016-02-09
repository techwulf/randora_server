module widget.controller.project.tasks.tasks;

import widget;

class ProjectTasksController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "tasks";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/tasks")
		void tasks(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/project/tasks/index.dt",
			);
		}
		+/
	}
}
