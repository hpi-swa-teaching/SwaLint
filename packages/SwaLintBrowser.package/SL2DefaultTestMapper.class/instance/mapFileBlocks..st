map - 1. possible bugs - syntax
mapFileBlocks: aSLTestData
	<sl2Test: #smallLintFileBlocks>

	self flag: #todo. "understand"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'syntax');
		yourself