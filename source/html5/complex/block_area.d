module html5.complex.block_area;

import html5;

class BlockAreaElement : DivElement{
	this(){
		super();
		this.tag.attr["class"] = "block-area";
	}
}
