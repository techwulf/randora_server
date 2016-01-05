$(document).ready(function() {
	$('#fileManager').elfinder(
		{
			resizable: false,
			//url : '/file_manager/connector/', // connector URL (REQUIRED)
			url : '/views/file_manager/connector.json',
			uiOptions : {
				toolbar : [
					['back', 'forward', 'home', 'reload'],
					['mkdir', 'mkfile', 'upload'],
					['view', 'sort'],
					['search']
				]
			},
			height: 500
		}
	);
	
	$('.elfinder-cwd-wrapper, .elfinder-navbar').niceScroll();
});