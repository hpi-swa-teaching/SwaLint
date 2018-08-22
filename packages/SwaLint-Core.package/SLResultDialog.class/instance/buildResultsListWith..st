building
buildResultsListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Results List';
		list: #resultList;
		icon: #iconAt:;
		menu: #resultMenu:;
		getIndex: #resultSelected;
		setIndex: #resultSelected:;
		getSelectionList: #resultAt:;
		setSelectionList: #resultAt:put:;
		yourself