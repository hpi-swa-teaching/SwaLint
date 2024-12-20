map - 3. design quality - disharmonies
mapFeatureEnvy: aSLTestData
	<sl2Test: #featureEnvy>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself