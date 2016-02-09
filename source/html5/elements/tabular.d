module html5.elements.tabular;

import html5;

class TabularElementPrototype : Element{
	this(string name){
		super(name);
	}
}

class TableElement : TabularElementPrototype{
	this(){
		super("tabular");
	}
}

class CaptionElement : TabularElementPrototype{
	this(){
		super("caption");
	}
}

class ColgroupElement : TabularElementPrototype{
	this(){
		super("colgroup");
	}
}

class ColElement : TabularElementPrototype{
	this(){
		super("col");
	}
}

class TbodyElement : TabularElementPrototype{
	this(){
		super("tbody");
	}
}

class TheadElement : TabularElementPrototype{
	this(){
		super("thead");
	}
}

class TfootElement : TabularElementPrototype{
	this(){
		super("tfoot");
	}
}

class TrElement : TabularElementPrototype{
	this(){
		super("tr");
	}
}

class TdElement : TabularElementPrototype{
	this(){
		super("td");
	}
}

class ThElement : TabularElementPrototype{
	this(){
		super("th");
	}
}

