map - 2. code quality - syntax
mapTempVarCouldBeInstVar: aSLTestData
	<sl2Test: #smallLintVariableReferencedOnce>

	^ (self makeTestFrom: aSLTestData)
		title: 'Tempvar could be instvar';
		addCategoryPath: #('code quality' 'syntax');
		yourself