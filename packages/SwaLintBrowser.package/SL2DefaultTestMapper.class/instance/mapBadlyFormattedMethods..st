map - 2. code quality - coding styles
mapBadlyFormattedMethods: aSLTestData
	<sl2Test: #badlyFormattedMethods>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself