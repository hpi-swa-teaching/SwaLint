building
buildClassesWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Classes List';
		list: #classList;
		menu: #classMenu:;
		getIndex: #classSelected;
		setIndex: #classSelected:;
		getSelectionList: #classAt:;
		setSelectionList: #classAt:put:;
		yourself