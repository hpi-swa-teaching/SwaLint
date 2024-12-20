map - 2. code quality - libraries
mapMethodModifierSuper: aSLTestData
	<sl2Test: #smallLintMethodModifierSuper>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries');
		yourself