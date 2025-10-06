map - 1. possible bugs - missing code
mapUndeclaredReference: aSLTestData
	<sl2Test: #smallLintUndeclaredReference>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'missing code');
		yourself