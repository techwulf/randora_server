module home.views.widgets.main_chart.main_chart;

import home;

class MainChartWidget : DivElement{
	this(){}
}

/+
<div class='tile'>
	<h2 class='tile-title'>Statistics</h2>
	<div class='tile-config dropdown'>
		<a data-toggle='dropdown' href='' class='tile-menu'></a>
		<ul class='dropdown-menu pull-right text-right'>
			<li><a class='tile-info-toggle' href=''>Chart Information</a></li>
			<li><a href=''>Refresh</a></li>
			<li><a href=''>Settings</a></li>
		</ul>
	</div>
	<div class='p-10'>
		<div id='line-chart' class='main-chart' style='height: 250px'></div>
		<div class='chart-info'>
			<ul class='list-unstyled'>
				<li class='m-b-10'>
					Total Sales 1200
					<span class='pull-right text-muted t-s-0'>
						<i class='fa fa-chevron-up'></i>
						+12%
					</span>
				</li>
				<li>
					<small>
						Local 640
						<span class='pull-right text-muted t-s-0'><i class='fa m-l-15 fa-chevron-down'></i> -8%</span>
					</small>
					<div class='progress progress-small'>
						<div class='progress-bar progress-bar-warning' role='progressbar' aria-valuenow='40' aria-valuemin='0' aria-valuemax='100' style='width: 40%'></div>
					</div>
				</li>
				<li>
					<small>
						Foreign 560
						<span class='pull-right text-muted t-s-0'>
							<i class='fa m-l-15 fa-chevron-up'></i>
							-3%
						</span>
					</small>
					<div class='progress progress-small'>
						<div class='progress-bar progress-bar-info' role='progressbar' aria-valuenow='40' aria-valuemin='0' aria-valuemax='100' style='width: 60%'></div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
+/
