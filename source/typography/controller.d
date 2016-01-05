module typography.controller;

import typography;

class TypographyController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "typography";
	}
	/+
	@method(HTTPMethod.GET){
		@path("typography")
		@path("typography/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"typography/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("typography/abbreviations")
		void abbreviations(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "abbreviations";
			render!(
				"typography/abbreviations/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/alignment_classes")
		void alignment_classes(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "alignment_classes";
			render!(
				"typography/alignment_classes/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/blockquote")
		void blockquote(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "blockquote";
			render!(
				"typography/blockquote/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/dropcaps")
		void dropcaps(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "dropcaps";
			render!(
				"typography/dropcaps/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/headings")
		void headings(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "headings";
			render!(
				"typography/headings/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/ordered_list")
		void ordered_list(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "ordered_list";
			render!(
				"typography/ordered_list/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/paragraph")
		void paragraph(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "paragraph";
			render!(
				"typography/paragraph/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("typography/unordered_list")
		void unordered_list(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "unordered_list";
			render!(
				"typography/unordered_list/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
	}
	+/
}