module widget.controller.typography.typography;

import widget;

class TypographyController : WidgetControllerPrototype{
	private TypographyAbbreviationsController		_abbreviations		= null;
	private TypographyAlignmentClassesController	_alignment_classes	= null;
	private TypographyBlockquoteController			_blockquote			= null;
	private TypographyDropcapsController			_dropcaps			= null;
	private TypographyHeadingsController			_headings			= null;
	private TypographyIndexController				_index				= null;
	private TypographyOrderedListController			_ordered_list		= null;
	private TypographyParagraphController			_paragraph			= null;
	private TypographyUnorderedListController		_unordered_list		= null;

	@property public TypographyAbbreviationsController		abbreviations(){ return this._abbreviations; }
	@property public TypographyAlignmentClassesController	alignment_classes(){ return this._alignment_classes; }
	@property public TypographyBlockquoteController			blockquote(){ return this._blockquote; }
	@property public TypographyDropcapsController			dropcaps(){ return this._dropcaps; }
	@property public TypographyHeadingsController			headings(){ return this._headings; }
	@property public TypographyIndexController				index(){ return this._index; }
	@property public TypographyOrderedListController		ordered_list(){ return this._ordered_list; }
	@property public TypographyParagraphController			paragraph(){ return this._paragraph; }
	@property public TypographyUnorderedListController		unordered_list(){ return this._unordered_list; }

	this(){
		super();
		this.name = "typography";

		//this._abbreviations		= new TypographyAbbreviationsController();
		//this._alignment_classes	= new TypographyAlignmentClassesController();
		//this._blockquote		= new TypographyBlockquoteController();
		//this._dropcaps			= new TypographyDropcapsController();
		//this._headings			= new TypographyHeadingsController();
		this._index				= new TypographyIndexController();
		//this._ordered_list		= new TypographyOrderedListController();
		//this._paragraph			= new TypographyParagraphController();
		//this._unordered_list	= new TypographyUnorderedListController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
