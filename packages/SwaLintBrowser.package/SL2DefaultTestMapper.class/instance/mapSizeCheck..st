map - 2. code quality - libraries - Collections
mapSizeCheck: aSLTestData
	<sl2Test: #smallLintSizeCheck>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself