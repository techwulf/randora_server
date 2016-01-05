module form.controller;

import form;

class FormController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "form";
	}
	/+
	@method(HTTPMethod.GET){
		@path("form")
		@path("form/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"form/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("form/components")
		void components(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "components";
			render!(
				"form/components.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("form/elements")
		void elements(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "elements";
			render!(
				"form/elements.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("form/examples")
		void examples(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "examples";
			render!(
				"form/examples.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("form/validation")
		void validation(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "validation";
			render!(
				"form/validation.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}