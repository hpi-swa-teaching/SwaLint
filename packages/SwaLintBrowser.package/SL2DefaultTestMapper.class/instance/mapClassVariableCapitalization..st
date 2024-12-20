map - 2. code quality - coding styles
mapClassVariableCapitalization: aSLTestData
	<sl2Test: #smallLintClassVariableCapitalization>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself