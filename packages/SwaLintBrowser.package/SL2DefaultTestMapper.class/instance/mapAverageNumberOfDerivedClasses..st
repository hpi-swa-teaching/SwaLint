map - 3. design quality - metrics
mapAverageNumberOfDerivedClasses: aSLTestData
	<sl2Test: #averageNumberOfDerivedClasses>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself