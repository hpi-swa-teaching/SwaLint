accessing-classes
classMenu: aMenu

	^ aMenu
		title: 'Classes';
		add: 'Select all' action: #selectAllClasses;
		add: 'Select inversion' action: #selectInverseClasses;
		add: 'Select none' action: #selectNoClasses;
		addLine;
		add: 'Filter...' action: #filterClasses;
		addLine;
		add: 'Refresh' action: #updateClasses;
		yourself