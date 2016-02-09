module widget.views.widgets.usa_map.usa_map;

import widget;

class WidgetUsaMap : DivElement{
	this(){
		super();
		init();
	}

	void init(){}
	/+
	override string init(){
		this.value = "";
		this.value ~= "
<div class='tile'>
	<h2 class='tile-title'>Live Visits</h2>
	<div class='tile-config dropdown'>
		<a data-toggle='dropdown' href='' class='tile-menu'></a>
		<ul class='dropdown-menu pull-right text-right'>
			<li><a href=''>Refresh</a></li>
			<li><a href=''>Settings</a></li>
		</ul>
	</div>
	<div id='usa-map'></div>
</div>
		";
		return this.value;
	}
	+/
}

