module user_interface.controller;

import user_interface;

class UserInterfaceController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;
		
		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "user_interface";
	}
	/+
	@method(HTTPMethod.GET){
		@path("user_interface")
		@path("user_interface/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"user_interface/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/alerts")
		void alerts(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "alerts";
			render!(
				"user_interface/alerts/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/buttons")
		void buttons(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "buttons";
			render!(
				"user_interface/buttons/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/components")
		void components(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "components";
			render!(
				"user_interface/components/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/images_icons")
		void images_icons(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "images_icons";
			render!(
				"user_interface/images_icons/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/labels")
		void labels(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "labels";
			render!(
				"user_interface/labels/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/media")
		void media(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "media";
			render!(
				"user_interface/media/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("user_interface/other")
		void other(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "other";
			render!(
				"user_interface/other/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}