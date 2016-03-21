module home.views.widgets.task.tasks;

import home;

class TasksWidget : DivElement{
	Tasks tasks;
	ContextMenuDatastructure context_menu = {
		[
			{"todo-add", "Add New"},
			{"todo-refresh", "Refresh"},
			{"todo-clear", "Clear All"}
		]
	};

	this(Tasks tasks){
		super();
		this.add_class("tile");
		this.tasks = tasks;
		this.init();
	}

	override void init(){
		this ~= new Title(this.tasks.title);
		this ~= new ContextMenuWidget(this.context_menu);
		this ~= new ListView(this.tasks);
	}

	class Title : H2Element{
		this(string title){
			super();
			this.add_class("tile-title");
			this ~= new Text(title);
		}
	}

	class ListView : DivElement{
		this(Tasks tasks){
			super();
			this.add_class(["listview", "todo-list", "sortable"]);
			foreach(int i, ToDo todo; tasks.todo){
				this ~= new Media(todo.value);
			}
		}

		class Media : DivElement{
			this(string text){
				super();
				this.add_class("media");
				this ~= new CheckboxDiv(text);
			}

			class CheckboxDiv : DivElement{
				this(string text){
					super();
					this.add_class(["checkbox", "m-0"]);
					this ~= new Label(text);
				}

				class Label : LabelElement{
					this(string text){
						super();
						this.add_class("t-overflow");
						this ~= new Input();
						this ~= new Text(text);
					}

					class Input : InputElement{
						this(){
							super();
							this.Type("checkbox");
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

