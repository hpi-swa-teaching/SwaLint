map - 2. code quality - libraries - Collections
mapToDoCollect: aSLTestData
	<sl2Test: #toDoCollectRule>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself