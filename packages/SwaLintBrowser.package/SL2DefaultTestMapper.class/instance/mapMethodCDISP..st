map - 3. design quality - metrics
mapMethodCDISP: aSLTestData
	<sl2Test: #methodCDISP>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself