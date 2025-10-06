map - 2. code quality - syntax
mapInstVarCouldBeTempVar: aSLTestData
	<sl2Test: #smallLintVariableReferencedOnce>

	^ (self makeTestFrom: aSLTestData)
		title: 'Instvar could be tempvar';
		addCategoryPath: #('code quality' 'syntax');
		yourself