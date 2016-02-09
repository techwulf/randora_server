module widget.controller.project.project;

import widget;

class ProjectController : WidgetControllerPrototype{
	private ProjectIndexController		_index		= null;
	private ProjectProjectsController	_projects	= null;
	private ProjectTasksController		_tasks		= null;

	@property public ProjectIndexController		index(){ return this._index; }
	@property public ProjectProjectsController	projects(){ return this._projects; }
	@property public ProjectTasksController		tasks(){ return this._tasks; }

	this(){
		super();
		this.name = "project";

		this._index		= new ProjectIndexController();
		this._projects	= new ProjectProjectsController();
		this._tasks		= new ProjectTasksController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
