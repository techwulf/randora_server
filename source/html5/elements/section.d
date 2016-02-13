module html5.elements.section;

import html5;

class SectionElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class ArticleElement : SectionElementPrototype{
	this(){
		super("article");
	}
}

class BodyElement : SectionElementPrototype{
	this(){
		super("body");
	}
}

class SectionElement : SectionElementPrototype{
	this(){
		super("section");
	}
}

class NavElement : SectionElementPrototype{
	this(){
		super("nav");
	}
}

class AsideElement : SectionElementPrototype{
	this(){
		super("aside");
	}
}

class H1Element : SectionElementPrototype{
	this(){
		super("h1");
	}
}

class H2Element : SectionElementPrototype{
	this(){
		super("h2");
	}
}

class H3Element : SectionElementPrototype{
	this(){
		super("h3");
	}
}

class H4Element : SectionElementPrototype{
	this(){
		super("h4");
	}
}

class H5Element : SectionElementPrototype{
	this(){
		super("h5");
	}
}

class H6Element : SectionElementPrototype{
	this(){
		super("h6");
	}
}

class HeaderElement : SectionElementPrototype{
	this(){
		super("header");
	}
}

class FooterElement : SectionElementPrototype{
	this(){
		super("footer");
	}
}

class AddressElement : SectionElementPrototype{
	this(){
		super("address");
	}
}
