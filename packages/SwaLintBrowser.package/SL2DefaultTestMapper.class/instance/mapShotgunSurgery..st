map - 3. design quality - disharmonies
mapShotgunSurgery: aSLTestData
	<sl2Test: #shotgunSurgery>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself