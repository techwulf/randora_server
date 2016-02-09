module widget.controller.typography.unordered_list.unordered_list;

import widget;

class TypographyUnorderedListController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "unordered_list";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/unordered_list")
		void unordered_list(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/unordered_list/index.dt",
			);
		}
		+/
	}
}
