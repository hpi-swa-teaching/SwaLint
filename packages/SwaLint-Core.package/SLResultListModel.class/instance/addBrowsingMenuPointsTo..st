menus
addBrowsingMenuPointsTo: aMenu

	self anyBrowsableSelected ifTrue: [
		aMenu 
			addLine;
			add: 'browse selection' translated 
			action: #resultsBrowserForSelection].