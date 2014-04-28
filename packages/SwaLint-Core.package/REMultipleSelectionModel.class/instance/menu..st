menus
menu: aMenu 
	aMenu
		add: 'Select All' action: #selectAll;
		add: 'Select None' action: #selectNone.
	getMenu ifNotNil: 
			[model perform: getMenu
				withArguments: { 
						aMenu.
						self}].
	^aMenu