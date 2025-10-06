map - 2. code quality - libraries
mapPlatformDependentUserInteraction: aSLTestData
	<sl2Test: #smallLintPlatformDependentUserInteraction>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries');
		yourself