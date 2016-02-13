module html5.elements.embedded;

import html5;

class EmbeddedElementPrototype : ParentElement{
	this(string name){
		super(name);
	}
}

class ImgElement : EmbeddedElementPrototype{
	this(){
		super("img");
	}
}

class IframeElement : EmbeddedElementPrototype{
	this(){
		super("iframe");
	}
}

class EmbedElement : EmbeddedElementPrototype{
	this(){
		super("embed");
	}
}

class ObjectElement : EmbeddedElementPrototype{
	this(){
		super("object");
	}
}

class ParamElement : EmbeddedElementPrototype{
	this(){
		super("param");
	}
}

class VideoElement : EmbeddedElementPrototype{
	this(){
		super("video");
	}
}

class AudioElement : EmbeddedElementPrototype{
	this(){
		super("audio");
	}
}

class SourceElement : EmbeddedElementPrototype{
	this(){
		super("source");
	}
}

class TrackElement : EmbeddedElementPrototype{
	this(){
		super("track");
	}
}

class MapElement : EmbeddedElementPrototype{
	this(){
		super("map");
	}
}

class AreaElement : EmbeddedElementPrototype{
	this(){
		super("area");
	}
}
