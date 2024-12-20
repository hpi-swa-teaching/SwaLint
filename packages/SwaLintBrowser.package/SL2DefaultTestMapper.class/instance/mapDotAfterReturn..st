map - 2. code quality - coding styles
mapDotAfterReturn: aSLTestData
	<sl2Test: #dotAfterReturn>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself