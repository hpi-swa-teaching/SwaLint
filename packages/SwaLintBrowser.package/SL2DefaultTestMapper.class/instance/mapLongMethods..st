map - 3. design quality - disharmonies
mapLongMethods: aSLTestData
	<sl2Test: #longMethods>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself