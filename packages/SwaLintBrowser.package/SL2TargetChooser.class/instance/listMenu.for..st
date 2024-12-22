menus
listMenu: menu for: selector

	^ menu
		add: 'Select all' selector: #selectAll: argument: selector;
		add: 'Select inversion' selector: #invertSelection: argument: selector;
		add: 'Select none' selector: #selectNone: argument: selector;
		yourself