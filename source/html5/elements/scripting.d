module html5.elements.scripting;

import html5;

class ScriptingElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class ScriptElement : ScriptingElementPrototype{
	this(){
		super("script");
	}
}

class NoscriptElement : ScriptingElementPrototype{
	this(){
		super("noscript");
	}
}

class TemplateElement : ScriptingElementPrototype{
	this(){
		super("template");
	}
}

class CanvasElement : ScriptingElementPrototype{
	this(){
		super("canvas");
	}
}
