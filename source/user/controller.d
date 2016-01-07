module user.controller;

import user;

class UserController : AppController{
	App app = null;
	PageVars page = null;
	UserModel model = null;
	
	this(App app){
		this.app = app;

		this.app.router.registerWebInterface(this);

		this.page = new PageVars();
		this.page.actor = "user";
		
		this.model = new UserModel();

		this.model.add(
			new UserRecord(
				0,
				"Master_Foo",
				"password",
				"master_foo@email.com",
				"profile-pic.jpg"
			)
		);
		this.model.add(
			new UserRecord(
				1,
				"Master_Bar",
				"password",
				"master_bar@email.com",
				"profile-pic.jpg"
			)
		);
	}
	
	@method(HTTPMethod.GET){
		@path("user/")
		@path("user/index")
		void getIndex(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "index";

			response.render!(
				"user/index/index.dt",
				this.app,
				this.page,
				this.model
			);
		}
		
		@path("user/forgot_password")
		void getForgotPassword(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "forgot_password";
			
			response.render!(
				"user/forgot_password/index.dt",
				this.app,
				this.page,
				this.model
			);
		}
		
		@path("user/id/:id")
		@path("user/profile/:id")
		void getProfile(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "profile";
			
			import std.conv;
			int id = to!(int)(request.params["id"]);

			auto user = this.model.find(id);

			if(user !is null){
				response.render!(
					"user/profile/index.dt",
					request,
					response,
					this.app,
					this.page,
					this.model,
					user
				);
			}
			
			enforceHTTP(false, HTTPStatus.badRequest, "User Does Not Exist.");
		}
		
		@path("user/login")
		void getLogin(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "login";
			
			response.render!(
				"user/login/index.dt",
				this.app,
				this.page,
				this.model
			);
		}

		@path("user/logout")
		void getLogout(){
			this.app.session.authenticated = false;
			terminateSession();
			redirect("/");
		}
		
		@path("user/register")
		void getRegister(HTTPServerRequest request, HTTPServerResponse response){
			this.page.action = "register";
			
			response.render!(
				"user/register/index.dt",
				this.app,
				this.page,
				this.model
			);
		}
	}

	@method(HTTPMethod.POST){
		@path("user/login/")
		void postLogin(HTTPServerRequest request, HTTPServerResponse response){
			UserRecord record = this.model.authenticate(
				request.form["username"],
				request.form["password"]
			);

			this.app.session.authenticated = record !is null ? true : false;

			if(this.app.session.authenticated){
				this.app.session.user_id		= record.id;
				this.app.session.user_name		= record.username;
				this.app.session.user_password	= record.password;
				this.app.session.user_email		= record.email;
				this.app.session.user_avatar	= record.avatar;

				redirect("/");
			}else{
				enforceHTTP(
					false,
					HTTPStatus.forbidden,
					"Invalid username or password."
				);
			}
		}
		
		@path("user/register/")
		void postRegister(HTTPServerRequest request, HTTPServerResponse response){
			enforceHTTP(
				"user" in request.form,
				HTTPStatus.BadRequest,
				"Missing user field."
			);
			
			response.redirect(
				"/users/" ~ request.form["user"]
			);
		}
	}
}
