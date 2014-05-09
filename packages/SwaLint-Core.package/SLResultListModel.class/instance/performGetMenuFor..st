menus
performGetMenuFor: aMenu 
	
	^ getMenu 
		ifNil: [aMenu]
		ifNotNil: [model perform: getMenu withArguments: {aMenu. self}]