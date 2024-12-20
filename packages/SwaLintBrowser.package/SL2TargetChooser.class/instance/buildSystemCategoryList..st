toolbuilder
buildSystemCategoryList: builder
 
	^ builder pluggableMultiSelectionListSpec new
		model: self;
		name: #systemCategoryList;
		frame: (LayoutFrame fullFrame rightFraction: 1 / 2; yourself);
		filterableList: true;
		clearFilterAutomatically: false;
		autoDeselect: true;
		list: #availableSystemCategories;
		getIndex: #selectedSystemCategoryIndex;
		setIndex: #selectSystemCategoryAt:;
		getSelectionList: #hasSystemCategorySelectedAt:;
		setSelectionList: #systemCategoryAt:select:;
		yourself