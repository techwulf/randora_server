module widget.controller.typography.blockquote.blockquote;

import widget;

class TypographyBlockquoteController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "blockquote";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/blockquote")
		void blockquote(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"widget/typography/blockquote/index.dt",
			);
		}
		+/
	}
}
