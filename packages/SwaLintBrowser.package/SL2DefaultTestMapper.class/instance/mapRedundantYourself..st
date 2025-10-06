map - 2. code quality - syntax
mapRedundantYourself: aSLTestData
	<sl2Test: #smallLintYourselfNotUsed>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant #yourself';
		addCategoryPath: #('code quality' 'syntax');
		yourself