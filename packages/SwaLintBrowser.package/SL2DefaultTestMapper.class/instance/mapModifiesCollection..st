map - 1. possible bugs - libraries - Collections
mapModifiesCollection: aSLTestData
	<sl2Test: #smallLintModifiesCollection>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Collections');
		yourself