map - 2. code quality - syntax
mapVariableAssignedLiteral: aSLTestData
	<sl2Test: #smallLintVariableAssignedLiteral>

	self flag: #discuss. "isnt this a legitimate explaining variable name?"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself