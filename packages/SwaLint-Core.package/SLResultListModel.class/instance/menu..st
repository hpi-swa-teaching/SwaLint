menus
menu: aMenu 

	aMenu title: 'Results'.
	
	self 
		addBasicMenuPointsTo: aMenu;
		addBrowsingMenuPointsTo: aMenu;
		addInspectErrorMenuPointTo: aMenu.
		
	^ self performGetMenuFor: aMenu