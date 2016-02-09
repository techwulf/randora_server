module widget.controller.form.form;

import widget;

class FormController : WidgetControllerPrototype{
	private FormComponentsController	_components	= null;
	private FormElementsController		_elements	= null;
	private FormExamplesController		_examples	= null;
	private FormIndexController			_index		= null;
	private FormValidationController	_validation	= null;

	@property public FormComponentsController	components(){ return this._components; }
	@property public FormElementsController		elements(){ return this._elements; }
	@property public FormExamplesController		examples(){ return this._examples; }
	@property public FormIndexController		index(){ return this._index; }
	@property public FormValidationController	validation(){ return this._validation; }

	this(){
		super();
		this.name = "form";

		this._components	= new FormComponentsController();
		this._elements		= new FormElementsController();
		this._examples		= new FormExamplesController();
		this._index			= new FormIndexController();
		this._validation	= new FormValidationController();

		this.web_interface_settings.urlPrefix = "/"~this.name;
		this.router.registerWebInterface(this, this.web_interface_settings);
	}
}
