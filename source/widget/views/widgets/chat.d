module widget.views.widgets.chat;

import app;

class WidgetChat : DivElement{
	this(){
		super();
		this.tag.attr["class"] = "chat";

		this.init();
	}

	DivElement chat_header(){
		IElement i = new IElement();
		i.tag.attr["class"] = "fa fa-circle-o status m-r-5";
		i ~= new Text("Chat with Friends");

		AElement anchor = new AElement();
		anchor.tag.attr["class"] = "btn btn-sm";
		anchor.tag.attr["href"] = "#";
		anchor ~= i;

		DivElement chat_header = new DivElement();
		chat_header.tag.attr["class"] = "chat-header";
		chat_header ~= anchor;

		return chat_header;
	}

	ImgElement profile_picture(string profile_pic, string alignment){
		ImgElement img = new ImgElement();
		img.tag.attr["class"] = alignment;
		img.tag.attr["src"] = "/img/profile-pics/"~profile_pic;
		img.tag.attr["width"] = "30";
		img.tag.attr["alt"] = "";

		return img;
	}

	DivElement chat_body_first(string profile_pic, string name, string message, string time, string alignment){
		DivElement media_body = new DivElement();
		media_body.tag.attr["class"] = "media-body " ~ alignment;
		media_body ~= new Text(message);

		SmallElement from = new SmallElement();
		from ~= new Text(name);
		from ~= new Text(" - ");
		from ~= new Text(time);

		DivElement media = new DivElement();
		media.tag.attr["class"] = "media";
		media ~= this.profile_picture(profile_pic, alignment);
		media ~= media_body;
		media ~= from;

		return media;
	}

	DivElement chat_body_item(string profile_pic, string name, string message, string time, string alignment){
		SmallElement from = new SmallElement();
		from ~= new Text(name);
		from ~= new Text(" - ");
		from ~= new Text(time);

		DivElement media_body = new DivElement();
		media_body.tag.attr["class"] = "media-body " ~ alignment;
		media_body ~= new Text(message);

		DivElement media = new DivElement();
		media.tag.attr["class"] = "media " ~ alignment;
		media ~= this.profile_picture(profile_pic, alignment);
		media ~= media_body;
		media ~= from;

		return media;
	}

	DivElement chat_body(){
		DivElement chat_body = new DivElement();
		chat_body.tag.attr["class"] = "chat-body";
		chat_body ~= chat_body_first("1.jpg", "Me", "Hiiii. How you doing bro?", "10 Mins ago", "pull-right");
		chat_body ~= chat_body_item("2.jpg", "David", "I'm doing well buddy. How do you do?", "9 Mins ago", "pull-left");
		chat_body ~= chat_body_item("1.jpg", "Me", "I'm Fine bro Thank you for asking", "8 Mins ago", "pull-right");
		chat_body ~= chat_body_item("1.jpg", "Me", "Any idea for a hangout?", "8 Mins ago", "pull-right");

		return chat_body;
	}

	DivElement chat_footer(){
		IElement chat_list_toggle = new IElement();
		chat_list_toggle.tag.attr["class"] = "chat-list-toggle pull-left fa fa-bars";
		chat_list_toggle ~= new Text("");

		IElement picture = new IElement();
		picture.tag.attr["class"] = "chat-list-toggle pull-left fa fa-bars";
		picture ~= new Text("");

		TextareaElement text_area = new TextareaElement();
		text_area.tag.attr["class"] = "form-control";
		text_area.tag.attr["placeholder"] = "Type Something...";
		text_area ~= new Text("");

		DivElement media_body = new DivElement();
		media_body.tag.attr["class"] = "media-body";
		media_body ~= text_area;

		DivElement chat_footer = new DivElement();
		chat_footer.tag.attr["class"] = "chat-footer media";
		chat_footer ~= chat_list_toggle;
		chat_footer ~= picture;
		chat_footer ~= media_body;

		return chat_footer;
	}

	DivElement area(){
		DivElement area = new DivElement();
		area.tag.attr["class"] = "media-body";

		area ~= this.chat_header();
		area ~= this.chat_body();
		area ~= this.chat_footer();

		return area;
	}

	DivElement list_item_first(string profile_pic, string name){
		ImgElement img = new ImgElement();
		img.tag.attr["class"] = "pull-left";
		img.tag.attr["src"] = "/img/profile-pics/"~profile_pic;
		img.tag.attr["width"] = "30";
		img.tag.attr["alt"] = "";

		DivElement media_body = new DivElement();
		media_body.tag.attr["class"] = "media-body p-t-5";
		media_body ~= new Text(name);

		DivElement media = new DivElement();
		media.tag.attr["class"] = "media";
		media ~= img;
		media ~= media_body;

		return media;
	}

	DivElement list_item(string profile_pic, string name){
		ImgElement img = new ImgElement();
		img.tag.attr["class"] = "pull-left";
		img.tag.attr["src"] = "/img/profile-pics/"~profile_pic;
		img.tag.attr["width"] = "30";
		img.tag.attr["alt"] = "";

		SpanElement span = new SpanElement();
		span.tag.attr["class"] = "t-overflow p-t-5";
		span ~= new Text(name);

		DivElement media_body = new DivElement();
		media_body.tag.attr["class"] = "media-body";
		media_body ~= span;

		DivElement media = new DivElement();
		media.tag.attr["class"] = "media";
		media ~= img;
		media ~= media_body;

		return media;
	}

	DivElement list(){
		DivElement list_view = new DivElement();
		list_view.tag.attr["class"] = "listview narrow";
		list_view ~= list_item_first("1.jpg", "Alex Bendit");
		list_view ~= list_item("2.jpg", "David Volla Watkinson");
		list_view ~= list_item("3.jpg", "Mitchell Christein");
		list_view ~= list_item("4.jpg", "Wayne Parnell");
		list_view ~= list_item("5.jpg", "Melina April");
		list_view ~= list_item("6.jpg", "Ford Harnson");

		DivElement list = new DivElement();
		list.tag.attr["class"] = "pull-left chat-list";
		list ~= list_view;

		return list;
	}

	override void init(){
		this ~= this.list();
		this ~= this.area();
	}
}
