module html5.elements.parent;

import html5;

class ParentElement : Element{
	this(string name){
		super(name);
	}

	void init(){}

	void reset(){
		this.elements = null;
		this.init();
	}
}
