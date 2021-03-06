module widget.views.widgets.pies.pies;

import widget;

class WidgetPies : DivElement{
	this(){
		super();
		init();
	}

	override void init(){}
	/+
	override string init(){
		this.value = "";
		this.value ~= "
<div class='tile text-center'>
	<div class='tile-dark p-10'>
		<div class='pie-chart-tiny' data-percent='86'>
			<span class='percent'></span>
			<span class='pie-title'>New Visitors <i class='m-l-5 fa fa-retweet'></i></span>
		</div>
		<div class='pie-chart-tiny' data-percent='23'>
			<span class='percent'></span>
			<span class='pie-title'>Bounce Rate <i class='m-l-5 fa fa-retweet'></i></span>
		</div>
		<div class='pie-chart-tiny' data-percent='57'>
			<span class='percent'></span>
			<span class='pie-title'>Emails Sent <i class='m-l-5 fa fa-retweet'></i></span>
		</div>
		<div class='pie-chart-tiny' data-percent='34'>
			<span class='percent'></span>
			<span class='pie-title'>Sales Rate <i class='m-l-5 fa fa-retweet'></i></span>
		</div>
		<div class='pie-chart-tiny' data-percent='81'>
			<span class='percent'></span>
			<span class='pie-title'>New Signups <i class='m-l-5 fa fa-retweet'></i></span>
		</div>
	</div>
</div>
		";
		return this.value;
	}
	+/
}
