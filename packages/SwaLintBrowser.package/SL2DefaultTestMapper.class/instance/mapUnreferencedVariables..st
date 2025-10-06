map - 2. code quality - syntax
mapUnreferencedVariables: aSLTestData
	<sl2Test: #smallLintUnreferencedVariables>

	self flag: #todo. "duplication with #mapUnreferencedVariable: and #mapUnusedVariables:"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself