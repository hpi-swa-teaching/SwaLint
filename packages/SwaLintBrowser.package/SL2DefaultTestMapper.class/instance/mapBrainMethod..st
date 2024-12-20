map - 3. design quality - disharmonies
mapBrainMethod: aSLTestData
	<sl2Test: #brainMethod>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself