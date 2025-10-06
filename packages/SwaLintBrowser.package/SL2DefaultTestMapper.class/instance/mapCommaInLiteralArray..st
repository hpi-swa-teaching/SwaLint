map - 1. possible bugs - syntax
mapCommaInLiteralArray: aSLTestData
	<sl2Test: #smallLintLiteralArrayContainsComma>

	^ (self makeTestFrom: aSLTestData)
		title: 'Comma in literal array';
		addCategoryPath: #('possible bugs' 'syntax');
		yourself