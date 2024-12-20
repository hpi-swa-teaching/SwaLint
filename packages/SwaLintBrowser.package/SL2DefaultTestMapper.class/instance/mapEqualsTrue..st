map - 2. code quality - libraries - Booleans
mapEqualsTrue: aSLTestData
	<sl2Test: #smallLintEqualsTrue>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Booleans');
		yourself