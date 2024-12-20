map - 2. code quality - libraries - Booleans
mapReturnsBooleanAndOther: aSLTestData
	<sl2Test: #smallLintReturnsBooleanAndOther>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Booleans');
		yourself