module html5.elements.root;

import html5;

class RootElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class HtmlElement : RootElementPrototype{
	this(){
		super("html");
	}
}
