map - 3. design quality - metrics
mapAverageHierarchyHeight: aSLTestData
	<sl2Test: #averageHierarchyHeight>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself