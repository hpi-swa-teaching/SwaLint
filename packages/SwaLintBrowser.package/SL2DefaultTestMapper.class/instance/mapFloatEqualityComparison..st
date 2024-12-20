map - 1. possible bugs - libraries - Numbers
mapFloatEqualityComparison: aSLTestData
	<sl2Test: #smallLintFloatEqualityComparison>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Numbers');
		yourself