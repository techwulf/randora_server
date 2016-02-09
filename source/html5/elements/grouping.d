module html5.elements.grouping;

import html5;

class GroupingElementPrototype : Element{
	this(string name){
		super(name);
	}
}

class PElement : GroupingElementPrototype{
	this(){
		super("p");
	}
}

class HrElement : GroupingElementPrototype{
	this(){
		super("hr");
	}
}

class PreElement : GroupingElementPrototype{
	this(){
		super("pre");
	}
}

class BlockquoteElement : GroupingElementPrototype{
	this(){
		super("blockquote");
	}
}

class DlElement : GroupingElementPrototype{
	this(){
		super("dl");
	}
}

class DtElement : GroupingElementPrototype{
	this(){
		super("dt");
	}
}

class DdElement : GroupingElementPrototype{
	this(){
		super("dd");
	}
}

class OlElement : GroupingElementPrototype{
	this(){
		super("ol");
	}
}

class UlElement : GroupingElementPrototype{
	this(){
		super("ul");
	}
}

class LiElement : GroupingElementPrototype{
	this(){
		super("li");
	}
}

class FigureElement : GroupingElementPrototype{
	this(){
		super("figure");
	}
}

class FigcaptionElement : GroupingElementPrototype{
	this(){
		super("figcaption");
	}
}

class DivElement : GroupingElementPrototype{
	this(){
		super("div");
	}
}

class MainElement : GroupingElementPrototype{
	this(){
		super("main");
	}
}
