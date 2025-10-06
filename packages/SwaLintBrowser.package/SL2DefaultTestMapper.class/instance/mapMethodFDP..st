map - 3. design quality - metrics
mapMethodFDP: aSLTestData
	<sl2Test: #methodFDP>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself