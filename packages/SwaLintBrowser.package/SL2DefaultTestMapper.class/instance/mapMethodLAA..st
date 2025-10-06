map - 3. design quality - metrics
mapMethodLAA: aSLTestData
	<sl2Test: #methodLAA>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself