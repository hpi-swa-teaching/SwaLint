map - 3. design quality - metrics
mapNumberOfAccessedVars: aSLTestData
	<sl2Test: #numberOfAccessedVars>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself