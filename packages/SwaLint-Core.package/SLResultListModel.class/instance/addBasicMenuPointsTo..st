menus
addBasicMenuPointsTo: aMenu

	self multipleSelections ifTrue: [
		aMenu 
			add: 'select all' translated action: #selectAll;
			add: 'select none' translated action: #selectNone;
			addLine].
	
	aMenu
		add: 'order by...' translated subMenu: self sortingMenu;
		addUpdating: #multipleSelectionsString 
		action: #toggleMultipleSelections.