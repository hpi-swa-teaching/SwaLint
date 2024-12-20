menus
testNodeMenu: menu

	self hasTestSelected ifTrue:
		[menu add: 'browse test' action: [self selectedTestNode browse].
		self selectedTestNode mapper ifNotNil:
			[menu add: 'browse test mapper' action: [self selectedTestNode browseMapper]].
		menu add: 'inspect test' action: [self selectedTestNode inspect].
		menu addLine].
	
	menu sl2Add: 'show all tests' getState: #shouldDisplayAllTests setState: #shouldDisplayAllTests:.
	
	^ menu