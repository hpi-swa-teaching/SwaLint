map - 2. code quality - syntax
mapRedundantTempVarAssignment: aSLTestData
	<sl2Test: #unnecessaryAssignmentRule>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant tempvar assignment';
		addCategoryPath: #('code quality' 'syntax');
		yourself