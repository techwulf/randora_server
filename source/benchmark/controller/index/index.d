module benchmark.controller.index.index;

import benchmark;

final class IndexController : BenchmarkControllerPrototype{
	this(){
		super();
		this.name = "index";

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("/")
		@path("/index")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			response.render!(
				"benchmark/index/index.dt",
				this.name
			);
		}
	}
}
