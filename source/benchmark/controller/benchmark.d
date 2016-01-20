module benchmark.controller.benchmark;

import benchmark;

class BenchmarkController : BenchmarkControllerPrototype{
	private BlankController		_blank		= null;
	private FibonacciController	_fibonacci	= null;
	private IndexController		_index		= null;
	private LayoutController	_layout		= null;

	@property public BlankController		blank(){ return this._blank; }
	@property public FibonacciController	fibonacci(){ return this._fibonacci; }
	@property public IndexController		index(){ return this._index; }
	@property public LayoutController		layout(){ return this._layout; }

	this(){
		super();
		this.name = "user";

		this._blank		= new BlankController();
		this._fibonacci	= new FibonacciController();
		this._index		= new IndexController();
		this._layout	= new LayoutController();

		this.web_interface_settings.urlPrefix = "/"~this.name;

		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
