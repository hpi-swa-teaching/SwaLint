map - 3. design quality - metrics
mapOverviewPyramidMetric: aSLTestData
	<sl2Test: #overviewPyramidMetric>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself