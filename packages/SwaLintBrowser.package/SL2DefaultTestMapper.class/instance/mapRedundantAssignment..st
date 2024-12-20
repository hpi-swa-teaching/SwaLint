map - 2. code quality - syntax
mapRedundantAssignment: aSLTestData
	<sl2Test: #smallLintAssignmentWithoutEffect>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant assignment';
		addCategoryPath: #('code quality' 'syntax');
		yourself