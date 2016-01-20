module widget.controller.widget;

import widget;

class WidgetController : WidgetControllerPrototype{
	private CalendarController		_calendar		= null;
	private ChartController			_chart			= null;
	private FileManagerController	_file_manager	= null;
	private FormController			_form			= null;
	private IndexController			_index			= null;
	private MessageController		_message		= null;
	private NotificationController	_notification	= null;
	private PageController			_page			= null;
	private PhotoGalleryController	_photo_gallery	= null;
	private ProjectController		_project		= null;
	private SalesController			_sales			= null;
	private TableController			_table			= null;
	private TypographyController	_typography		= null;
	private UserInterfaceController	_user_interface	= null;
	private VideoController			_video			= null;

	@property public CalendarController			calendar(){ return this._calendar; }
	@property public ChartController			chart(){ return this._chart; }
	@property public FileManagerController		file_manager(){ return this._file_manager; }
	@property public FormController				form(){ return this._form; }
	@property public IndexController			index(){ return this._index; }
	@property public MessageController			message(){ return this._message; }
	@property public NotificationController		notification(){ return this._notification; }
	@property public PageController				page(){ return this._page; }
	@property public PhotoGalleryController		photo_gallery(){ return this._photo_gallery; }
	@property public ProjectController			project(){ return this._project; }
	@property public SalesController			sales(){ return this._sales; }
	@property public TableController			table(){ return this._table; }
	@property public TypographyController		typography(){ return this._typography; }
	@property public UserInterfaceController	user_interface(){ return this._user_interface; }
	@property public VideoController			video(){ return this._video; }

	this(){
		super();
		this.name = "widget";

		this._calendar			= new CalendarController();
		this._chart				= new ChartController();
		this._file_manager		= new FileManagerController();
		this._form				= new FormController();
		this._index				= new IndexController();
		this._message			= new MessageController();
		this._notification		= new NotificationController();
		this._page				= new PageController();
		this._photo_gallery		= new PhotoGalleryController();
		this._project			= new ProjectController();
		this._sales				= new SalesController();
		this._table				= new TableController();
		this._typography		= new TypographyController();
		this._user_interface	= new UserInterfaceController();
		this._video				= new VideoController();

		this.web_interface_settings.urlPrefix = "/"~this.name;

		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
