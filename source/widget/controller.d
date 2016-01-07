module widget.controller;

import widget;

class WidgetController : AppController{
	App app = null;
	PageVars page = null;

	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);
		
		this.page = new PageVars();
		this.page.actor = "widget";
	}
	
	@method(HTTPMethod.GET){
		@path("widget")
		@path("widget/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "index";
			render!(
				"widget/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		/+
		@path("widget/calendar")
		@path("widget/calendar/index")
		void calendar(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "calendar";
			render!(
				"widget/calendar/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/chart")
		@path("widget/chart/index")
		void chart(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "chart";
			render!(
				"widget/chart/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/file_manager")
		@path("widget/file_manager/index")
		void file_manager(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "file manager";
			render!(
				"widget/file_manager/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/file_manager/connector")
		void connector(HTTPServerRequest request, HTTPServerResponse response){
			//GET XHR http://localhost:8080/file_manager/connector/?cmd=open&target=&init=1&tree=1&_=1451642205322
			this.page.actor = "connector";
			render!(
				"widget/file_manager/connector.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/form")
		@path("widget/form/index")
		void form(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "form";
			render!(
				"widget/form/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/form/components")
		void components(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "components";
			render!(
				"widget/form/components.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/form/elements")
		void elements(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "elements";
			render!(
				"widget/form/elements.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/form/examples")
		void examples(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "examples";
			render!(
				"widget/form/examples.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/form/validation")
		void validation(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "validation";
			render!(
				"widget/form/validation.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/message")
		@path("widget/message/index")
		void message(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "message";
			render!(
				"widget/message/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/message/detail")
		void detail(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "detail";
			render!(
				"widget/message/detail/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/notification/drawer")
		void drawer(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "drawer";
			render!(
				"widget/notification/drawer/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/notification")
		@path("widget/notification/index")
		void notification(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "notification";
			render!(
				"widget/notification/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/pages")
		@path("widget/pages/index")
		void pages(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "page";
			render!(
				"widget/page/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/page/list")
		void list(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "list";
			render!(
				"widget/page/list/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/photo_gallery")
		@path("widget/photo_gallery/index")
		void photo_gallery(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "photo gallery";
			render!(
				"widget/photo_gallery/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/project")
		@path("widget/project/index")
		void project(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "project";
			render!(
				"widget/project/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/project/projects")
		void projects(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "projects";
			render!(
				"widget/project/projects/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/project/tasks")
		void tasks(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "tasks";
			render!(
				"widget/project/tasks/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/sales")
		@path("widget/sales/index")
		void sales(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "sales";
			render!(
				"widget/sales/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/sales/main_chart")
		void main_chart(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "main_chart";
			render!(
				"widget/sales/main_chart/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/sales/pies")
		void pies(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "pies";
			render!(
				"widget/sales/pies/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/sales/quick_stats")
		void quick_stats(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "quick_stats";
			render!(
				"widget/sales/quick_stats/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/table")
		@path("widget/table/index")
		void table(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "table";
			render!(
				"widget/table/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/typography")
		@path("widget/typography/index")
		void typography(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "typography";
			render!(
				"widget/typography/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/typography/abbreviations")
		void abbreviations(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "abbreviations";
			render!(
				"widget/typography/abbreviations/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/alignment_classes")
		void alignment_classes(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "alignment_classes";
			render!(
				"widget/typography/alignment_classes/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/blockquote")
		void blockquote(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "blockquote";
			render!(
				"widget/typography/blockquote/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/dropcaps")
		void dropcaps(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "dropcaps";
			render!(
				"widget/typography/dropcaps/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/headings")
		void headings(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "headings";
			render!(
				"widget/typography/headings/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/ordered_list")
		void ordered_list(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "ordered_list";
			render!(
				"widget/typography/ordered_list/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/paragraph")
		void paragraph(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "paragraph";
			render!(
				"widget/typography/paragraph/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/typography/unordered_list")
		void unordered_list(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "unordered_list";
			render!(
				"widget/typography/unordered_list/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/user_interface")
		@path("widget/user_interface/index")
		void user_interface(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "user interface";
			render!(
				"widget/user_interface/index/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/alerts")
		void alerts(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "alerts";
			render!(
				"widget/user_interface/alerts/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/buttons")
		void buttons(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "buttons";
			render!(
				"widget/user_interface/buttons/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/components")
		void components(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "components";
			render!(
				"widget/user_interface/components/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/images_icons")
		void images_icons(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "images_icons";
			render!(
				"widget/user_interface/images_icons/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/labels")
		void labels(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "labels";
			render!(
				"widget/user_interface/labels/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/media")
		void media(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "media";
			render!(
				"widget/user_interface/media/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		
		@path("widget/user_interface/other")
		void other(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "other";
			render!(
				"widget/user_interface/other/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}

		@path("widget/video")
		@path("widget/video/index")
		void video(HTTPServerRequest request, HTTPServerResponse response){
			this.page.actor = "video";
			render!(
				"widget/video/index.dt",
				request,
				response,
				this.app,
				this.page
			);
		}
		+/
	}
}
