map - 2. code quality - libraries - Collections
mapRedundantCollectionCopy: aSLTestData
	<sl2Test: #smallLintCollectSelectNotUsed>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant collection copy';
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		description: aSLTestData description , ' If the result of a message such as #collect: or #select: is not used, use a simple #do: instead.';
		yourself