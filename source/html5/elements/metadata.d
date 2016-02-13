module html5.elements.metadata;

import html5;

class MetadataElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class BaseElement : MetadataElementPrototype{
	this(){
		super("base");
	}
}

class HeadElement : MetadataElementPrototype{
	this(){
		super("head");
	}
}

class LinkElement : MetadataElementPrototype{
	this(){
		super("link");
	}
}

class MetaElement : MetadataElementPrototype{
	this(){
		super("meta");
	}
}

class TitleElement : MetadataElementPrototype{
	this(){
		super("title");
	}
}

class StyleElement : MetadataElementPrototype{
	this(){
		super("style");
	}
}
