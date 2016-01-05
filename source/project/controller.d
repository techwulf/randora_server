module project.controller;

import project;

class ProjectController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "project";
	}
	/+
	@method(HTTPMethod.GET){
		@path("project")
		@path("project/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"project/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("project/projects")
		void projects(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "projects";
			render!(
				"project/projects/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("project/tasks")
		void tasks(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "tasks";
			render!(
				"project/tasks/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}