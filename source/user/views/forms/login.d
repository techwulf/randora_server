module user.views.forms.login;

import app;

class UserFormsLogin : FormElement{
	this(){
		super();
		this.tag.attr["class"] = "tile active";
		this.tag.attr["id"] = "box-login";
		this.tag.attr["action"] = "/user/login";
		this.tag.attr["method"] = "post";
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
		h2 ~= new Text("Login");

		InputElement input0 = new InputElement();
		input0.tag.attr["class"] = "login-control m-b-10";
		input0.tag.attr["type"] = "text";
		input0.tag.attr["name"] = "username";
		input0.tag.attr["placeholder"] = "Username or Email Addresss";

		DivElement row0 = this.row();
		row0 ~= input0;


		InputElement input1 = new InputElement();
		input1.tag.attr["class"] = "login-control m-b-10";
		input1.tag.attr["type"] = "text";
		input1.tag.attr["name"] = "username";
		input1.tag.attr["placeholder"] = "Username or Email Addresss";

		DivElement row1 = this.row();
		row1 ~= input1;

		InputElement cb = new InputElement();
		cb.tag.attr["type"] = "checkbox";
		cb ~= new Text("Remember Me");

		LabelElement label = new LabelElement();
		label ~= cb;

		DivElement checkbox = new DivElement();
		checkbox.tag.attr["class"] = "checkbox m-b-20";
		checkbox ~= label;

		ButtonElement submit_button = new ButtonElement();
		submit_button.tag.attr["class"] = "btn btn-sm m-r-5";
		submit_button.tag.attr["type"] = "submit";
		submit_button ~= new Text("Sign In");

		AElement anchor0 = new AElement();
		anchor0.tag.attr["class"] = "box-switcher";
		anchor0.tag.attr["data-switch"] = "box-register";
		anchor0.tag.attr["href"] = "/user/register";
		anchor0 ~= new Text("Don't have an Account");

		AElement anchor1 = new AElement();
		anchor1.tag.attr["class"] = "box-switcher";
		anchor1.tag.attr["data-switch"] = "box-reset";
		anchor1.tag.attr["href"] = "/user/forgot_password";
		anchor1 ~= new Text("Forgot Password?");

		SmallElement small = new SmallElement();
		small ~= anchor0;
		small ~= new Text(" or ");
		small ~= anchor1;

		this ~= h2;
		this ~= row0;
		this ~= row1;
		this ~= checkbox;
		this ~= submit_button;
		this ~= small;
	}
}
