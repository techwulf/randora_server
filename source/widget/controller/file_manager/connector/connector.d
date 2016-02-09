module widget.controller.file_manager.connector.connector;

import widget;

class FileManagerConnectorController : WidgetControllerPrototype{
	this(){
		super();
		this.name = "connector";
		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		/+
		@path("")
		@path("/connector")
		void connector(HTTPServerRequest request, HTTPServerResponse response){
			//GET XHR http://localhost:8080/file_manager/connector/?cmd=open&target=&init=1&tree=1&_=1451642205322
			response.render!(
				"widget/file_manager/connector.dt"
			);
		}
		+/
	}
}
