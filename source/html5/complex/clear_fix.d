module html5.complex.clear_fix;

import html5;

class ClearFixElement : DivElement{
	this(){
		super();
		this.tag.attr["class"] = "clear_fix";
		this ~= new Text("");
	}
}
