map - 3. design quality - disharmonies
mapDispersedCoupling: aSLTestData
	<sl2Test: #dispersedCoupling>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself