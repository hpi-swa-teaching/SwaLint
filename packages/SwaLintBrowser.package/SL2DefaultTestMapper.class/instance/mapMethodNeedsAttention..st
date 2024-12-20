map - 3. design quality - metrics
mapMethodNeedsAttention: aSLTestData
	<sl2Test: #methodNeedsAttention>

	self flag: #todo. "merge with debugging reminents?"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself