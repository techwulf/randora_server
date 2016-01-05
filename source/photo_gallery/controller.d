module photo_gallery.controller;

import photo_gallery;

class PhotoGalleryController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "photo_gallery";
	}
	/+
	@method(HTTPMethod.GET){
		@path("photo_gallery")
		@path("photo_gallery/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"photo_gallery/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}