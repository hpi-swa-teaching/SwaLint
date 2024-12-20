map - 2. code quality - libraries
mapConsistencyCheck: aSLTestData
	<sl2Test: #smallLintConsistencyCheck>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries');
		yourself