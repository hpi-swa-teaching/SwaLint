map - 3. design quality - metrics
mapCommentedMethods: aSLTestData
	<sl2Test: #commentedMethods>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself