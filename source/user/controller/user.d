module user.controller.user;

import user;

class UserController : UserControllerPrototype{
	//private ForgotPasswordController	_forgot_password	= null;
	private IndexController				_index				= null;
	//private LoginController				_login				= null;
	//private LogoutController			_logout				= null;
	//private ProfileController			_profile			= null;
	//private RegisterController			_register			= null;

	//@property public ForgotPasswordController	forgot_password(){ return this._forgot_password; }
	@property public IndexController			index(){ return this._index; }
	//@property public LoginController			login(){ return this._login; }
	//@property public LogoutController			logout(){ return this._logout; }
	//@property public ProfileController			profile(){ return this._profile; }
	//@property public RegisterController			register(){ return this._register; }

	this(){
		super();
		this.name = "user";

		//this._forgot_password	= new ForgotPasswordController();
		this._index				= new IndexController();
		//this._login				= new LoginController();
		//this._logout			= new LogoutController();
		//this._profile			= new ProfileController();
		//this._register			= new RegisterController();

		this.web_interface_settings.urlPrefix = this.name;

		this.router.registerWebInterface(this, this.web_interface_settings);
		this.router.get("/", &this.index.getIndex);
	}
}
