map - 2. code quality - libraries - Collections
mapDetectContains: aSLTestData
	<sl2Test: #smallLintDetectContains>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself