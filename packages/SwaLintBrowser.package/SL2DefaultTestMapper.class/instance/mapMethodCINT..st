map - 3. design quality - metrics
mapMethodCINT: aSLTestData
	<sl2Test: #methodCINT>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself