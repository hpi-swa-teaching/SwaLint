toolbuilder
buildClassList: builder

	^ builder pluggableListSpec new
		name: #classList;
		model: self;
		
		list: #classLabels;
		getIndex: #selectedClassIndex;
		setIndex: #selectClassIndex:;
		
		menu: #classListMenu:shifted:;
		keyPress: #classListKey:from:;
		
		yourself