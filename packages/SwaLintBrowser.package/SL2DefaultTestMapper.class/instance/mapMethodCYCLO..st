map - 3. design quality - metrics
mapMethodCYCLO: aSLTestData
	<sl2Test: #methodCYCLO>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself