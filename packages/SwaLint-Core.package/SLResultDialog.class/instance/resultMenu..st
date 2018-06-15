accessing-results
resultMenu: aMenu

	^ aMenu
		title: 'Results';
		add: 'Select all' action: #selectAllResults;
		add: 'Select none' action: #selectNoResults;
		addLine;
		add: self orderButtonString action: #changeResultOrdering;
		add: self selectionButtonString action: #changeSelection;
		yourself