map - 2. code quality - coding styles
mapTemporaryVariableCapitalization: aSLTestData
	<sl2Test: #smallLintTemporaryVariableCapitalization>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself