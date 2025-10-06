map - 2. code quality - syntax
mapRedundantBlock: aSLTestData
	<sl2Test: #smallLintExtraBlock>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant block';
		addCategoryPath: #('code quality' 'syntax');
		yourself