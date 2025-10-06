map - 3. design quality - metrics
mapClassCount: aSLTestData
	<sl2Test: #classCount>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself