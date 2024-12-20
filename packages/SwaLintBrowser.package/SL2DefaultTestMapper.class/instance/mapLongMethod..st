map - 3. design quality - disharmonies
mapLongMethod: aSLTestData
	<sl2Test: #longMethod>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself