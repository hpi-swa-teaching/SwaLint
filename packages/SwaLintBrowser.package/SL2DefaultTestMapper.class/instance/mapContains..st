map - 2. code quality - libraries - Collections
mapContains: aSLTestData
	<sl2Test: #smallLintContains>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself