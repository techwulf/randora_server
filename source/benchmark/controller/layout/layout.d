module benchmark.controller.layout.layout;

import benchmark;

final class LayoutController : BenchmarkControllerPrototype{
	this(){
		super();
		this.name = "layout";

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("/")
		@path("/index")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"benchmark/layout/index.dt",
				this.name
			);
			+/
		}
	}
}
