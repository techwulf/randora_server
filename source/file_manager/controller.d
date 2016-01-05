module file_manager.controller;

import file_manager;

class FileManagerController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "file_manager";
	}
	/+
	@method(HTTPMethod.GET){
		/+
		@path("file_manager")
		@path("file_manager/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"file_manager/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		+/
		/+
		@path("file_manager/connector")
		void connector(HTTPServerRequest request, HTTPServerResponse response){
			//GET XHR http://localhost:8080/file_manager/connector/?cmd=open&target=&init=1&tree=1&_=1451642205322
			this.page.actor = "connector";
			render!(
				"file_manager/connector.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		+/
	}
	+/
}