map - 3. design quality - metrics
mapGlobalState: aSLTestData
	<sl2Test: #globalState>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself