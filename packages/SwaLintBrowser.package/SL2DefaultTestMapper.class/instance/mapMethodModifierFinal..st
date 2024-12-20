map - 2. code quality - syntax
mapMethodModifierFinal: aSLTestData
	<sl2Test: #smallLintMethodModifierFinal>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself