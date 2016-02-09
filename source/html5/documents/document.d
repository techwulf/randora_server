module html5.documents.document;

import html5;

class HTMLDocument : Document{
	this(){
		super(new Tag("html"));
		this.prolog = "<!DOCTYPE html><!--[if IE 9 ]><html class='ie9'><![endif]-->";
	}
}

class HTMLLayout : HTMLDocument{
	this(){
		super();
	}
}
