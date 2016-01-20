module benchmark.controller.fibonacci.fibonacci;

import benchmark;
package import std.bigint, std.math;

BigInt fibonacci_iterative(ulong n) {
	BigInt fnow = 0, fnext = 1, tempf;
	while(--n > 0){
		tempf = fnow + fnext;
		fnow = fnext;
		fnext = tempf;
	}
	return fnext;
}

final class FibonacciController : BenchmarkControllerPrototype{
	this(){
		super();
		this.name = "fibonacci";

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}

	@method(HTTPMethod.GET){
		@path("/:value")
		@path("/index/:value")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			ulong value = to!(ulong)(request.params["value"]);
			BigInt answer = fibonacci_iterative(value);

			response.render!(
				"benchmark/fibonacci/index.dt",
				answer
			);
		}
	}
}
