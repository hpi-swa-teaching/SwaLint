map - 3. design quality - metrics
mapMaxNesting: aSLTestData
	<sl2Test: #maxNesting>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself