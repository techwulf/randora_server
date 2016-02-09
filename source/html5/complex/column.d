module html5.complex.column;

import html5;

class ColumnElement : DivElement{
	import std.conv;
	int grid = 12;

	this(int grid = 12){
		super();
		this.grid = grid;
		this.tag.attr["class"] = "col-md-" ~ to!(string)(this.grid);
	}
}
