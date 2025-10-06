map - 3. design quality - disharmonies
mapBrainClass: aSLTestData
	<sl2Test: #brainClass>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself