module user.views.widgets.login;

import user;

class LoginWidget : DivElement{
	UserFormsLogin login = null;
	UserFormsLogout logout = null;

	this(){
		super();

		this.login = new UserFormsLogin();
		this.logout = new UserFormsLogout();

		if(true){
			this ~= this.login;
		}else{
			this ~= this.logout;
		}
	}
}
