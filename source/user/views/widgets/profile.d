module user.views.widgets.profile;

import app;

class UserWidgetProfile : DivElement{
	this(){
		this.tag.attr["id"] = "profile-menu";
		this.tag.attr["class"] = "text-center s-widget m-b-25 dropdown";

		this.init();
	}

	void init(){
		string user_id		= "0";
		string user_avatar	= "profile-pic.jpg";
		string user_name	= "Master Foo";
		string user_email	= "Master.Foo.v.1.0.0@gmail.com";

		H4Element name = new H4Element();
		name.tag.attr["class"] = "m-0";
		name ~= new Text(user_name);

		DivElement email = new DivElement();
		email ~= new Text(user_email);

		this ~= this.profile_pic(user_id, user_avatar);
		this ~= this.profile_menu(user_id);
		this ~= name;
		this ~= email;
	}

	LiElement list_item(string href, string value){
		AElement anchor = new AElement();
		anchor.tag.attr["href"] = href;
		anchor ~= new Text(value);

		IElement icon_left = new IElement();
		icon_left.tag.attr["class"] = "icon left";
		icon_left ~= new Text("&#61903;");

		IElement icon_right = new IElement();
		icon_right.tag.attr["class"] = "icon right";
		icon_right ~= new Text("&#61815;");

		LiElement list = new LiElement();
		list ~= anchor;
		list ~= icon_left;
		list ~= icon_right;

		return list;
	}

	UlElement profile_menu(string user_id){
		UlElement menu = new UlElement();
		menu.tag.attr["class"] = "dropdown-menu profile-menu";
		//profile_menu ~= profile_list;
		menu ~= this.list_item("/user/id"~user_id, "MyProfile");
		menu ~= this.list_item("/messages/", "Messages");
		menu ~= this.list_item("/settings/", "Settings");
		menu ~= this.list_item("/user/logout", "Sign Out");
		return menu;
	}

	AElement profile_pic(string user_id, string user_avatar){
		ImgElement profile_pic = new ImgElement();
		profile_pic.tag.attr["class"] = "profile-pic animated";
		profile_pic.tag.attr["src"] = "/img/"~user_avatar;
		profile_pic.tag.attr["alt"] = "";

		AElement anchor = new AElement();
		anchor.tag.attr["href"] = "/user/id/"~user_id;
		anchor.tag.attr["data-toggle"] = "dropdown";
		anchor ~= profile_pic;

		return anchor;
	}

}
