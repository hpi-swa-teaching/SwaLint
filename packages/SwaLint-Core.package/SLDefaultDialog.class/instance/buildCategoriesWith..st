building
buildCategoriesWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Categories List';
		list: #categoryList;
		menu: #categoryMenu:;
		getIndex: #categorySelected;
		setIndex: #categorySelected:;
		getSelectionList: #categoryAt:;
		setSelectionList: #categoryAt:put:;
		yourself