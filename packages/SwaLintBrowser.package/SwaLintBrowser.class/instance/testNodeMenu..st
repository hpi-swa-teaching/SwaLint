menus
testNodeMenu: menu

	self hasTestSelected ifTrue:
		[menu add: 'browse test (b)' action: [self browseSelectedTestNode].
		self selectedTestNode mapper ifNotNil:
			[menu add: 'browse test mapper (B)' action: [self browseSelectedTestNodeMapper]].
		menu add: 'inspect test (i)' action: [self inspectSelectedTestNode].
		menu add: 'copy name (c)' action: [self copySelectedTestName].
		menu addLine].
	
	menu sl2Add: 'show all tests' getState: #shouldDisplayAllTests setState: #shouldDisplayAllTests:.
	
	^ menu