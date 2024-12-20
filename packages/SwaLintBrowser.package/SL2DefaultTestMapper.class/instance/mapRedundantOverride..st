map - 2. code quality - syntax
mapRedundantOverride: aSLTestData
	<sl2Test: #smallLintJustSendsSuper>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant override';
		addCategoryPath: #('code quality' 'syntax');
		yourself