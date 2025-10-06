map - 2. code quality - libraries - Collections
mapToDo: aSLTestData
	<sl2Test: #toDoRule>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself