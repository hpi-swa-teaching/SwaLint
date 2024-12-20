map - 3. design quality - metrics
mapMethodLOC: aSLTestData
	<sl2Test: #methodLOC>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself