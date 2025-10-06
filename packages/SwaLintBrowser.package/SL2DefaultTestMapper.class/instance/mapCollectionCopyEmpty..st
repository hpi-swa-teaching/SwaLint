map - 1. possible bugs - libraries - Collections
mapCollectionCopyEmpty: aSLTestData
	<sl2Test: #smallLintCollectionCopyEmpty>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Collections');
		yourself