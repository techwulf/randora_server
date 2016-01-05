module app.model;

class AppModel(RecordType){
	RecordType[] records;
	alias records this;

	void add(RecordType record){
		this.records ~= record;
	}

	RecordType find(int id){
		foreach(RecordType record; this.records){
			if(record.id == id){
				return record;
			}
		}
		return null;
	}

	void create(){}
	void del(){}
	void read(){}
	void update(){}
}