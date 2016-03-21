module home.views.widgets.recent_postings.recent_postings;

import home;

class RecentPostingsWidget : DivElement{
	RecentPost recent_post;
	ContextMenuDatastructure context_menu = {
		[
			{"posts-refresh", "Refresh"},
			{"posts-settings", "Settings"}
		]
	};

	this(RecentPost post){
		super();
		this.add_class("tile");
		this.recent_post = post;
		init();
	}

	override void init(){
		this ~= new Title(this.recent_post.title);
		this ~= new ContextMenuWidget(this.context_menu);
		this ~= new Listview(this.recent_post.posts);
	}

	class Title : H2Element{
		this(string title){
			super();
			this.add_class("tile-title");
			this ~= new Text(title);
		}
	}

	class Listview : DivElement{
		this(Post[] posts){
			super();
			this.add_class("listview");
			this.add_class("narrow");
			foreach(int i, Post post; posts){
				this ~= new Media(post);
			}
		}

		class Media : DivElement{
			this(Post post){
				super();
				this.add_class("media");
				this.add_class("p-l-5");
				this ~= new ProfilePic(post.uri);
				this ~= new MediaBody(post.time, post.from, post.message);
			}

			class ProfilePic : DivElement{
				this(string uri){
					super();
					this.add_class("pull-left");
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
					this.add_class("media-body");
					this ~= new Time(time, from);
					this ~= new BrElement();
					this ~= new Message(message);
				}

				class Time : SmallElement{
					this(string time, string from){
						super();
						this.add_class("text-muted");
						this ~= new Text("On "~time~" By "~from);
					}
				}

				class Message : AElement{
					this(string message){
						super();
						this.add_class("t-overflow");
						this.tag.attr["href"] = "";
						this ~= new Text("message");
					}
				}
			}
		}
	}
}
