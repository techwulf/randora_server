module home.views.widgets.usa_map.usa_map;

import home;

class UsaMapWidget : DivElement{
	string title = "";
	this(){
		super();
		this.tag.attr["class"] = "tile";
		this.title = "Live Visits";
		this.init();
	}

	class TileTitle : H2Element{
		this(string title){
			super();
			this.tag.attr["class"] = "tile-title";
			this ~= new Text(title);
		}
	}

	void init(){
		this ~= new TileTitle(this.title);
		//this ~= new TileConfig();
	}
}

/+
<h2 class='tile-title'>Live Visits</h2>
<div class='tile-config dropdown'>
	<a data-toggle='dropdown' href='' class='tile-menu'></a>
	<ul class='dropdown-menu pull-right text-right'>
		<li><a href=''>Refresh</a></li>
		<li><a href=''>Settings</a></li>
	</ul>
</div>
<div id='usa-map'></div>
+/
