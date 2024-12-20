map - 2. code quality - syntax
mapUnreferencedVariable: aSLTestData
	<sl2Test: #unreferencedVariable>

	self flag: #todo. "duplication with #mapUnreferencedVariables: and #mapUnusedVariables:"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself