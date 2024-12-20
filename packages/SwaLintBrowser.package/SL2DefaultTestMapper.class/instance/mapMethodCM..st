map - 3. design quality - metrics
mapMethodCM: aSLTestData
	<sl2Test: #methodCM>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself