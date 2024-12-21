map - 3. design quality - antipatterns
mapDirectInstVarAccess: aSLTestData
	<sl2Test: #instanceVariableAccessIsConsistent>

	^ (self makeTestFrom: aSLTestData)
		title: 'Direct instvar access';
		addCategoryPath: #('design quality' 'antipatterns');
		addCategoryPath: #('<SWA starting points>');
		yourself