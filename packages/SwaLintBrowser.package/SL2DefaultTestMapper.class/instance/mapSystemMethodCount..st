map - 3. design quality - metrics
mapSystemMethodCount: aSLTestData
	<sl2Test: #systemMethodCount>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself