module html5.elements.form;

import html5;

class FormElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class FormElement : FormElementPrototype{
	this(){
		super("form");
	}
}

class LabelElement : FormElementPrototype{
	this(){
		super("label");
	}
}

class InputElement : FormElementPrototype{
	this(){
		super("input");
	}
}

class ButtonElement : FormElementPrototype{
	this(){
		super("button");
	}
}

class SelectElement : FormElementPrototype{
	this(){
		super("select");
	}
}

class DatalistElement : FormElementPrototype{
	this(){
		super("datalist");
	}
}

class OptgroupElement : FormElementPrototype{
	this(){
		super("optgroup");
	}
}

class OptionElement : FormElementPrototype{
	this(){
		super("option");
	}
}

class TextareaElement : FormElementPrototype{
	this(){
		super("textarea");
	}
}

class KeygenElement : FormElementPrototype{
	this(){
		super("keygen");
	}
}

class OutputElement : FormElementPrototype{
	this(){
		super("output");
	}
}

class ProgressElement : FormElementPrototype{
	this(){
		super("progress");
	}
}

class MeterElement : FormElementPrototype{
	this(){
		super("meter");
	}
}

class FieldsetElement : FormElementPrototype{
	this(){
		super("fieldset");
	}
}

class LegendElement : FormElementPrototype{
	this(){
		super("legend");
	}
}
