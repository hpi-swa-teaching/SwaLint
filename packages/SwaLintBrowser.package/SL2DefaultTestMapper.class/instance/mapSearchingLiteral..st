map - 2. code quality - libraries
mapSearchingLiteral: aSLTestData
	<sl2Test: #smallLintSearchingLiteral>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries');
		yourself