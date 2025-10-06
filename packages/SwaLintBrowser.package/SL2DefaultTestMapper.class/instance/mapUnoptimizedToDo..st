map - 2. code quality - libraries - Collections
mapUnoptimizedToDo: aSLTestData
	<sl2Test: #smallLintUnoptimizedToDo>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		description: aSLTestData description , ' If you need to access the index, you can still use #withIndexDo: et al. in many situations.';
		yourself