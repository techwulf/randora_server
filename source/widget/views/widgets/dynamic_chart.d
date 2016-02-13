module widget.views.widgets.dynamic_chart.dynamic_chart;

import widget;

class WidgetDynamicChart : DivElement{
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
	<h2 class='tile-title'>Server Process</h2>
	<div class='tile-config dropdown'>
		<a data-toggle='dropdown' href='' class='tile-menu'></a>
		<ul class='dropdown-menu pull-right text-right'>
			<li><a href=''>Refresh</a></li>
			<li><a href=''>Settings</a></li>
		</ul>
	</div>

	<div class='p-t-10 p-r-5 p-b-5'>
		<div id='dynamic-chart' style='height: 200px'></div>
	</div>
</div>
		";
		return this.value;
	}
	+/
}

