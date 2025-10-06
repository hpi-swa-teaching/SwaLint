map - 1. possible bugs - missing code
mapMethodModifierOverride: aSLTestData
	<sl2Test: #smallLintMethodModifierOverride>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'missing code');
		yourself