map - 2. code quality - syntax
mapAssignmentInBlock: aSLTestData
	<sl2Test: #smallLintAssignmentInBlock>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself