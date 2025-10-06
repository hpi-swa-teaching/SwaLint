map - 3. design quality - metrics
mapMethodATFD: aSLTestData
	<sl2Test: #methodATFD>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself