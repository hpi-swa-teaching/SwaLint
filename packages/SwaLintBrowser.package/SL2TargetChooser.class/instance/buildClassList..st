toolbuilder
buildClassList: builder
 
	^ builder pluggableMultiSelectionListSpec new
		model: self;
		name: #classList;
		frame: (LayoutFrame fullFrame leftFraction: 1 / 2; yourself);
		filterableList: true;
		clearFilterAutomatically: false;
		autoDeselect: true;
		list: #availableClasses;
		getIndex: #selectedClassIndex;
		setIndex: #selectClassAt:;
		getSelectionList: #hasClassSelectedAt:;
		setSelectionList: #classAt:select:;
		yourself