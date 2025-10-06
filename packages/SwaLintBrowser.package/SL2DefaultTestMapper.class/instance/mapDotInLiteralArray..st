map - 1. possible bugs - syntax
mapDotInLiteralArray: aSLTestData
	<sl2Test: #smallLintLiteralArrayContainsDot>

	^ (self makeTestFrom: aSLTestData)
		title: 'Dot in literal array';
		addCategoryPath: #('possible bugs' 'syntax');
		yourself