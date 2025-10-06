map - 3. design quality - metrics
mapMethodCC: aSLTestData
	<sl2Test: #methodCC>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself