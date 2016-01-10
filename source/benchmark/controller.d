module benchmark.controller;

import benchmark;

class BenchmarkController : AppController{
	App app = null;
	PageVars page = null;
	
	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);

		this.page = new PageVars();
		this.page.actor = "benchmark";
	}
	
	@method(HTTPMethod.GET){
		@path("benchmark/")
		@path("benchmark/index")
		void index(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "index";

			response.render!(
				"benchmark/index/index.dt",
				this.app,
				this.page
			);
		}
		
		@path("benchmark/blank")
		void blank(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "blank";
			response.render!(
				"benchmark/blank/index.dt",
				this.app,
				this.page
			);
		}

		@path("benchmark/template")
		void getTemplate(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "template";
			response.render!(
				"benchmark/template/index.dt",
				this.app,
				this.page
			);
		}

		@path("benchmark/fibonacci/:value")
		void fibonacci(HTTPServerRequest request, HTTPServerResponse response){
			import benchmark.trials.fibonacci;

			this.page.action = "fibonacci";

			ulong value = to!(ulong)(request.params["value"]);
			BigInt answer = fibonacci_iterative(value);

			response.render!(
				"benchmark/fibonacci/index.dt",
				this.app,
				this.page,
				answer
			);
		}

		/+
			Future Benchmarks
			//Calculate prime numbers
			//Open a file
			//Model benchmarks
		+/
	}
}
