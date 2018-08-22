building
buildTestListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Test List';
		list: #testList;
		menu: #testMenu:;
		getIndex: #testSelected; 
		setIndex: #testSelected:;
		getSelectionList: #testAt:;
		setSelectionList: #testAt:put:;
		yourself