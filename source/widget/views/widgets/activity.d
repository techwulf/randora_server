module widget.views.widgets.activity.activity;

import widget;

class WidgetActivity : DivElement{
	this(){
		super();
		init();
	}

	override void init(){}
	/+
	override string init(){
		this.value = "";
		this.value ~= "
<div class='tile'>
	<h2 class='tile-title'>Social Media activities</h2>
	<div class='tile-config dropdown'>
		<a data-toggle='dropdown' href='' class='tile-menu'></a>
		<ul class='dropdown-menu pull-right text-right'>
			<li><a href=''>Refresh</a></li>
			<li><a href=''>Settings</a></li>
		</ul>
	</div>

	<div class='listview narrow'>

		<div class='media'>
			<div class='pull-right'>
				<div class='counts'>367892</div>
			</div>
			<div class='media-body'>
				<h6>FACEBOOK LIKES</h6>
			</div>
		</div>

		<div class='media'>
			<div class='pull-right'>
				<div class='counts'>2012</div>
			</div>
			<div class='media-body'>
				<h6>GOOGLE +1s</h6>
			</div>
		</div>

		<div class='media'>
			<div class='pull-right'>
				<div class='counts'>56312</div>
			</div>
			<div class='media-body'>
				<h6>YOUTUBE VIEWS</h6>
			</div>
		</div>

		<div class='media'>
			<div class='pull-right'>
				<div class='counts'>785879</div>
			</div>
			<div class='media-body'>
				<h6>TWITTER FOLLOWERS</h6>
			</div>
		</div>
		<div class='media'>
			<div class='pull-right'>
				<div class='counts'>68</div>
			</div>
			<div class='media-body'>
				<h6>WEBSITE COMMENTS</h6>
			</div>
		</div>
	</div>
</div>
		";
		return this.value;
	}
	+/
}

