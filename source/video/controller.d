module video.controller;

import video;

class VideoController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "video";
	}
	/+
	@method(HTTPMethod.GET){
		@path("video")
		@path("video/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"video/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}