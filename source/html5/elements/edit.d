module html5.elements.edit;

import html5;

class EditElementPrototype : Element{
	this(string name){
		super(name);
	}
}

class InsElement : EditElementPrototype{
	this(){
		super("ins");
	}
}

class DelElement : EditElementPrototype{
	this(){
		super("del");
	}
}
