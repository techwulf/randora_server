module app.layout.app_layout;

import app;

class AppLayout : DeepmagicLayout{
	AppLayoutBodyBlock body_block = null;
	AppLayoutHeadBlock head_block = null;

	this(){
		super();
		this.body_block	= new AppLayoutBodyBlock();
		this.head_block = new AppLayoutHeadBlock();
		this.init();
	}

	void init(){
		this ~= this.head_block;
		this ~= this.body_block;
	}
}
