map - 2. code quality - coding styles
mapGuardingClause: aSLTestData
	<sl2Test: #smallLintGuardingClause>

	self flag: #discuss. "could have an implicit meaning/focus"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself