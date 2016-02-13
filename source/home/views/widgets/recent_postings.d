module home.views.widgets.recent_postings.recent_postings;

import home;

class RecentPostingsWidget : DivElement{
	string title = "";
	this(){
		super();
		this.tag.attr["class"] = "tile";
		this.title = "Recent Postings";
		init();
	}

	override void init(){
		this ~= new Title(this.title);
		this ~= new Dropdown();
		this ~= new Listview();
	}

	class Title : H2Element{
		this(string title){
			super();
			this.tag.attr["class"] = "tile-title";
			this ~= new Text(title);
		}
	}

	class Dropdown : DivElement{
		this(){
			super();
			this.tag.attr["class"] = "tile-config dropdown";
			this ~= new DropdownAnchor();
			this ~= new DropdownMenu();
		}

		class DropdownAnchor : AElement{
			this(){
				super();
				this.tag.attr["class"] = "tile-menu";
				this.tag.attr["data-toggle"] = "dropdown";
				this.tag.attr["href"] = "";
				this ~= new Text("");
			}
		}

		class DropdownMenu : UlElement{
			this(){
				super();
				this.tag.attr["class"] = "dropdown-menu animated pull-right text-right";
				this ~= new ListElement("Refresh");
				this ~= new ListElement("Settings");
			}

			class ListElement : LiElement{
				this(string text){
					super();
					this ~= new ListAnchor(text);
				}

				class ListAnchor :  AElement{
					this(string text){
						super();
						this.tag.attr["href"] = "";
						this ~= new Text(text);
					}
				}
			}
		}
	}

	class Listview : DivElement{
		this(){
			super();
			this.tag.attr["class"] = "listview narrow";
			this ~= new Media("img/profile-pics/1.jpg", "2 Hours ago", "Adrien San", "Cras molestie fermentum nibh, ac semper");
			this ~= new Media("img/profile-pics/2.jpg", "5 Hours ago", "David Villa", "Suspendisse in purus ut nibh placerat");
			this ~= new Media("img/profile-pics/3.jpg", "15/12/2013", "Mitch bradberry", "Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra");
			this ~= new Media("img/profile-pics/4.jpg", "14/12/2013", "Mitch bradberry", "Cras pulvinar euismod nunc quis gravida.");
			this ~= new Media("img/profile-pics/5.jpg", "13/12/2013", "Mitch bradberry", "Integer a eros dapibus, vehicula quam accumsan, tincidunt purus");
		}

		class Media : DivElement{
			this(string uri, string time, string from, string message){
				super();
				this.tag.attr["class"] = "media p-l-5";
				this ~= new ProfilePic(uri);
				this ~= new MediaBody(time, from, message);
			}

			class ProfilePic : DivElement{
				this(string uri){
					super();
					this.tag.attr["class"] = "pull-left";
					this ~= new Img(uri);
				}

				class Img : ImgElement{
					this(string uri){
						super();
						this.tag.attr["width"] = "40";
						this.tag.attr["src"] = uri;
						this.tag.attr["alt"] = "";
					}
				}
			}

			class MediaBody : DivElement{
				this(string time, string from, string message){
					super();
					this.tag.attr["class"] = "media-body";
					this ~= new Time(time, from);
					this ~= new BrElement();
					this ~= new Message(message);
				}

				class Time : SmallElement{
					this(string time, string from){
						super();
						this.tag.attr["class"] = "text-muted";
						this ~= new Text("On "~time~" By "~from);
					}
				}

				class Message : AElement{
					this(string message){
						super();
						this.tag.attr["class"] = "t-overflow";
						this.tag.attr["href"] = "";
						this ~= new Text("message");
					}
				}
			}
		}
	}
}
