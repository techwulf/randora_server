module widget.controller.typography.ordered_list.ordered_list;

import widget;

class TypographyOrderedListController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "ordered_list";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/ordered_list")
		void ordered_list(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/ordered_list/index.dt",
			);
		}
		+/
	}
}
