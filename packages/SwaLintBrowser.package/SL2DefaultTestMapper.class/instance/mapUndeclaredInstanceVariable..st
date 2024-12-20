map - 1. possible bugs - missing code
mapUndeclaredInstanceVariable: aSLTestData
	<sl2Test: #smallLintVariableNotDefined>

	^ (self makeTestFrom: aSLTestData)
		title: 'Undeclared instance variable';
		addCategoryPath: #('possible bugs' 'missing code');
		yourself