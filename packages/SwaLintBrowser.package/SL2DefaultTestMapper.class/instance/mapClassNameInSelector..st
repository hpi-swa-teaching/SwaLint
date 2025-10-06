map - 2. code quality - coding styles
mapClassNameInSelector: aSLTestData
	<sl2Test: #classNameInSelector>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself