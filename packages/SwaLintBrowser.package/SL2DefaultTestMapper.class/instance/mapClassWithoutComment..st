map - 2. code quality - coding styles
mapClassWithoutComment: aSLTestData
	<sl2Test: #noClassComments>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		addCategoryPath: #('<SWA starting points>');
		yourself