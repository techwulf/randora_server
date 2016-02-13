module html5.elements.edit;

import html5;

class EditElementPrototype : ParentElement{
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
