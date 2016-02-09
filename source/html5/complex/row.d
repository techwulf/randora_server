module html5.complex.row;

import html5;

class RowElement : DivElement{
	this(){
		super();
		this.tag.attr["class"] = "row";
	}
}
