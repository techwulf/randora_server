module html5.elements.text_level;

import html5;

class TextLevelElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class AElement : TextLevelElementPrototype{
	this(){
		super("a");
	}
}

class EmElement : TextLevelElementPrototype{
	this(){
		super("em");
	}
}

class StrongElement : TextLevelElementPrototype{
	this(){
		super("strong");
	}
}

class SmallElement : TextLevelElementPrototype{
	this(){
		super("small");
	}
}

class SElement : TextLevelElementPrototype{
	this(){
		super("s");
	}
}

class CiteElement : TextLevelElementPrototype{
	this(){
		super("cite");
	}
}

class QElement : TextLevelElementPrototype{
	this(){
		super("q");
	}
}

class DfnElement : TextLevelElementPrototype{
	this(){
		super("dfn");
	}
}

class AbbrElement : TextLevelElementPrototype{
	this(){
		super("abbr");
	}
}

class DataElement : TextLevelElementPrototype{
	this(){
		super("data");
	}
}

class TimeElement : TextLevelElementPrototype{
	this(){
		super("time");
	}
}

class CodeElement : TextLevelElementPrototype{
	this(){
		super("code");
	}
}

class VarElement : TextLevelElementPrototype{
	this(){
		super("var");
	}
}

class SampElement : TextLevelElementPrototype{
	this(){
		super("samp");
	}
}

class KbdElement : TextLevelElementPrototype{
	this(){
		super("kbd");
	}
}

class SubElement : TextLevelElementPrototype{
	this(){
		super("sub");
	}
}

class SupsElement : TextLevelElementPrototype{
	this(){
		super("sups");
	}
}

class IElement : TextLevelElementPrototype{
	this(){
		super("i");
	}
}

class BElement : TextLevelElementPrototype{
	this(){
		super("b");
	}
}

class UElement : TextLevelElementPrototype{
	this(){
		super("u");
	}
}

class MarkElement : TextLevelElementPrototype{
	this(){
		super("mark");
	}
}

class RubyElement : TextLevelElementPrototype{
	this(){
		super("ruby");
	}
}

class RbElement : TextLevelElementPrototype{
	this(){
		super("rb");
	}
}

class RtElement : TextLevelElementPrototype{
	this(){
		super("rt");
	}
}

class RtcElement : TextLevelElementPrototype{
	this(){
		super("rtc");
	}
}

class RpElement : TextLevelElementPrototype{
	this(){
		super("rp");
	}
}

class BdiElement : TextLevelElementPrototype{
	this(){
		super("bdi");
	}
}

class BdoElement : TextLevelElementPrototype{
	this(){
		super("bdo");
	}
}

class SpanElement : TextLevelElementPrototype{
	this(){
		super("span");
	}
}

class BrElement : TextLevelElementPrototype{
	this(){
		super("br");
	}
}

class WbrElement : TextLevelElementPrototype{
	this(){
		super("wbr");
	}
}

