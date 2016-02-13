module user.views.forms.logout;

import app;

class UserFormsLogout : FormElement{
	this(){
		super();
		this.tag.attr["class"] = "box tile active";
		this.tag.attr["id"] = "box-logout";
		this.tag.attr["action"] = "/user/logout";
		this.tag.attr["method"] = "get";
		this.init();
	}

	DivElement row(){
		DivElement d = new DivElement();
		d.tag.attr["class"] = "row";

		return d;
	}

	override void init(){
		H2Element h2 = new H2Element();
		h2.tag.attr["class"] = "m-t-0 m-b-15";
		h2 ~= new Text("Logout");

		ButtonElement submit_button = new ButtonElement();
		submit_button.tag.attr["class"] = "btn btn-sm m-r-5";
		submit_button.tag.attr["type"] = "submit";
		submit_button ~= new Text("Logout");

		this ~= h2;
		this ~= submit_button;
	}
}
