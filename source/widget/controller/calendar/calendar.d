module widget.controller.calendar.calendar;

import widget;

class CalendarController : WidgetControllerPrototype{
	private CalendarIndexController	_index	= null;

	@property public CalendarIndexController	index(){ return this._index; }

	this(){
		super();
		this.name = "calendar";

		this._index	= new CalendarIndexController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
