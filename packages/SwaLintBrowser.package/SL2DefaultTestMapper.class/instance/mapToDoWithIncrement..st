map - 2. code quality - libraries - Collections
mapToDoWithIncrement: aSLTestData
	<sl2Test: #smallLintToDoWithIncrement>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		description: aSLTestData description , ' You can often use #withIndexDo: or #withIndexCollect: for those.';
		yourself