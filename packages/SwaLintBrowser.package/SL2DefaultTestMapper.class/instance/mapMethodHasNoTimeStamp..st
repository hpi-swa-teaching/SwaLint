map - 2. code quality - metadata
mapMethodHasNoTimeStamp: aSLTestData
	<sl2Test: #smallLintMethodHasNoTimeStamp>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'metadata');
		yourself