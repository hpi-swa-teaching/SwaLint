map - 2. code quality - libraries - Collections
mapRedundantCollectionConversion: aSLTestData
	<sl2Test: #smallLintAsOrderedCollectionNotNeeded>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant collection conversion';
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself