map - 3. design quality - disharmonies
mapIntensiveCoupling: aSLTestData
	<sl2Test: #intensiveCoupling>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself