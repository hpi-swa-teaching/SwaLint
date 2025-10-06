map - 3. design quality - disharmonies
mapDataClass: aSLTestData
	<sl2Test: #dataClass>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself