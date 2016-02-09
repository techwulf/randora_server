module home.views.widgets.task.tasks;

import home;

class WidgetTasks : DivElement{
	string title = "";
	this(){
		super();
		this.tag.attr["class"] = "tile";
		this.title = "Tasks To Do";
		init();
	}

	void init(){
		this ~= new Title(this.title);
		this ~= new DropdownMenu();
		this ~= new ListView();
	}

	class Title : H2Element{
		this(string title){
			super();
			this.tag.attr["class"] = "tile-title";
			this ~= new Text(title);
		}
	}

	class DropdownMenu : DivElement{
		this(){
			super();
			this.tag.attr["class"] = "tile-config dropdown";
			this ~= new MenuAnchor();
			this ~= new DropdownList();
		}

		class MenuAnchor : AElement{
			this(){
				super();
				this.tag.attr["class"] = "tile-menu";
				this.tag.attr["data-toggle"] = "dropdown";
				this.tag.attr["href"] = "";
				this ~= new Text("");
			}
		}

		class DropdownList : UlElement{
			this(){
				super();
				this.tag.attr["class"] = "dropdown-menu pull-right text-right";
				this ~= new ListItem("todo-add", "Add New");
				this ~= new ListItem("todo-refresh", "Refresh");
				this ~= new ListItem("todo-clear", "Clear All");
			}

			class ListItem : LiElement{
				this(string id, string text){
					super();
					this.tag.attr["id"] = id;
					this ~= new ListAnchor(text);
				}

				class ListAnchor : AElement{
					this(string text){
						super();
						this.tag.attr["href"] = "";
						this ~= new Text(text);
					}
				}
			}
		}
	}

	class ListView : DivElement{
		this(){
			super();
			this.tag.attr["class"] = "listview todo-list sortable";
			this ~= new Media("Curabitur quis nisi ut nunc gravida suscipis");
			this ~= new Media("Suscipit at feugiat dewoo");
			this ~= new Media("Gravida wendy lorem ipsum seen");
			this ~= new Media("Fedrix quis nisi ut nunc gravida suscipit at feugiat purus");
		}

		class Media : DivElement{
			this(string text){
				super();
				this.tag.attr["class"] = "media";
				this ~= new CheckboxDiv(text);
			}

			class CheckboxDiv : DivElement{
				this(string text){
					super();
					this.tag.attr["class"] = "checkbox m-0";
					this ~= new Label(text);
				}

				class Label : LabelElement{
					this(string text){
						super();
						this.tag.attr["class"] = "t-overflow";
						this ~= new Input();
						this ~= new Text(text);
					}

					class Input : InputElement{
						this(){
							super();
							this.tag.attr["type"] = "checkbox";
						}
					}
				}
			}
		}
	}

/+
<div class='tile-config dropdown'>
	<a data-toggle='dropdown' href='' class='tile-menu'></a>
	<ul class='dropdown-menu pull-right text-right'>
		<li id='todo-add'><a href=''>Add New</a></li>
		<li id='todo-refresh'><a href=''>Refresh</a></li>
		<li id='todo-clear'><a href=''>Clear All</a></li>
	</ul>
</div>

<div class='listview todo-list sortable'>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox'>
				Curabitur quis nisi ut nunc gravida suscipis
			</label>
		</div>
	</div>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox'>
				Suscipit at feugiat dewoo
			</label>
		</div>

	</div>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox'>
				Gravida wendy lorem ipsum seen
			</label>
		</div>

	</div>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox'>
				Fedrix quis nisi ut nunc gravida suscipit at feugiat purus
			</label>
		</div>

	</div>
</div>

<h2 class='tile-title'>Completed Tasks</h2>

<div class='listview todo-list sortable'>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox' checked='checked'>
				Motor susbect win latictals bin the woodat cool
			</label>
		</div>

	</div>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox' checked='checked'>
				Wendy mitchel susbect win latictals bin the woodat cool
			</label>
		</div>

	</div>
	<div class='media'>
		<div class='checkbox m-0'>
			<label class='t-overflow'>
				<input type='checkbox' checked='checked'>
				Latictals bin the woodat cool for the win
			</label>
		</div>

	</div>
</div>
+/
}

