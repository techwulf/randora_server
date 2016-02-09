module benchmark.controller.blank.blank;

import benchmark;

final class BlankController : BenchmarkControllerPrototype{
	this(){
		super();
		this.name = "blank";

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("/")
		@path("/index")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			/+
			response.render!(
				"benchmark/blank/index.dt",
				this.name,
				//this.model
			);
			+/
		}
	}
}
