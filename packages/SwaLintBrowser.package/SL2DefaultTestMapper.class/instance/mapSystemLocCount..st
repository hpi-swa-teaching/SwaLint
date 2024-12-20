map - 3. design quality - metrics
mapSystemLocCount: aSLTestData
	<sl2Test: #systemLocCount>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'metrics');
		yourself