map - 3. design quality - metrics
mapIsAddedService: aSLTestData
	<sl2Test: #isAddedService>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself