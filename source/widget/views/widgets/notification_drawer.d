module widget.views.widgets.notification_drawer;

import app;

class WidgetNotificationDrawer : DivElement{
	this(){
		super();
		this.tag.attr["class"] = "tile drawer animated";
		this.tag.attr["id"] = "notifications";

		this.init();
	}

	DivElement notification_settings(){
		AElement anchor = new AElement();
		anchor.tag.attr["href"] = "#";
		anchor ~= new Text("Notification Settings");

		SpanElement span = new SpanElement();
		span.tag.attr["class"] = "drawer-close";
		span ~= new Text("&#215;");

		DivElement snm = new DivElement();
		snm.tag.attr["class"] = "media";

		snm ~= anchor;
		snm ~= span;

		return snm;
	}

	DivElement media(string profile_pic, string name, string time, string message){
		AElement anchor = new AElement();
		anchor.tag.attr["class"] = "t-overflow";
		anchor.tag.attr["href"] = "#";
		anchor ~= new Text(message);

		SmallElement small = new SmallElement();
		small.tag.attr["class"] = "text-muted";
		small ~= new Text(name);
		small ~= new Text(" - ");
		small ~= new Text(name);

		DivElement media_body = new DivElement();
		media_body.tag.attr["class"] = "media-body";
		media_body ~= small;
		media_body ~= new BrElement();
		media_body ~= anchor;

		ImgElement img = new ImgElement();
		img.tag.attr["width"] = "40";
		img.tag.attr["src"] = "/img/profile-pics/"~profile_pic;
		img.tag.attr["alt"] = "";

		DivElement pull_left = new DivElement();
		pull_left.tag.attr["class"] = "pull-left";
		pull_left ~= img;

		DivElement m = new DivElement();
		m.tag.attr["class"] = "media";
		m ~= pull_left;
		m ~= media_body;

		return m;
	}

	DivElement overflow(){
		DivElement o = new DivElement();
		o.tag.attr["class"] = "overflow";
		o.tag.attr["style"] = "height: 254px";

		o ~= media("1.jpg", "Nadin Jackson", "2 Hours ago", "Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus");
		o ~= media("2.jpg", "David Villa", "5 Hours ago", "Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra");
		o ~= media("3.jpg", "Harris worgon", "On 15/12/2013", "Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id");
		o ~= media("4.jpg", "Mitch Bradberry", "On 14/12/2013", "Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.");
		o ~= media("1.jpg", "Nadin Jackson", "On 15/12/2013", "Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus");
		o ~= media("2.jpg", "David Villa", "On 16/12/2013", "Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra");
		o ~= media("3.jpg", "Harris worgon", "On 17/12/2013", "Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id");
		o ~= media("4.jpg", "Mitch Bradberry", "On 18/12/2013", "Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.");
		o ~= media("5.jpg", "Wendy Mitchell", "On 19/12/2013", "Integer a eros dapibus, vehicula quam accumsan, tincidunt purus");

		return o;
	}

	void init(){
		DivElement list_view = new DivElement();
		list_view.tag.attr["class"] = "listview narrow";

			list_view ~= this.notification_settings();

			list_view ~= this.overflow();

			SmallElement small = new SmallElement();
			small ~= new Text("VIEW ALL");

			AElement anchor = new AElement();
			anchor.tag.attr["href"] = "#";
			anchor ~= small;

			DivElement text_center = new DivElement();
			text_center.tag.attr["class"] = "media text-center whiter l-100";
			text_center ~= anchor;

			list_view ~= text_center;

		this ~= list_view;

		//.listview.narrow
			//.media
				//a(href="#") Notification Settings
				//span.drawer-close &#215;

			//.overflow(style="height: 254px")
				//.media
					//.pull-left
						//img(width="40", src="/img/profile-pics/1.jpg", alt="")
					//.media-body
						//small.text-muted Nadin Jackson - 2 Hours ago
						//br
						//a.t-overflow(href="#")
							//| Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus
				//.media
					//.pull-left
						//img(width="40", src="/img/profile-pics/2.jpg", alt="")
					//.media-body
						//small.text-muted David Villa - 5 Hours ago
						//br
						//a.t-overflow(href="#")
							//| Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra
				//.media
					//.pull-left
						//img(width="40", src="/img/profile-pics/3.jpg", alt="")
					//.media-body
						//small.text-muted Harris worgon - On 15/12/2013
						//br
						//a.t-overflow(href="#")
							//| Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id
				//.media
					//.pull-left
						//img(width="40", src="/img/profile-pics/4.jpg", alt="")
					//.media-body
						//small.text-muted Mitch Bradberry - On 14/12/2013
						//br
						//a.t-overflow(href="#")
							//| Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.
				//.media
					//.pull-left
						//img(width="40", src="/img/profile-pics/1.jpg", alt="")
					//.media-body
						//small.text-muted Nadin Jackson - On 15/12/2013
						//br
						//a.t-overflow(href="#")
							//| Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus
				//.media
					//.pull-left
						//img(width="40", src="/img/profile-pics/2.jpg", alt="")
					//.media-body
						//small.text-muted David Villa - On 16/12/2013
						//br
						//a.t-overflow(href="#")
							//| Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra

			//.media.text-center.whiter.l-100
				//a(href="#")
					//small VIEW ALL
	}
}
