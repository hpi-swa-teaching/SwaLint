map - 3. design quality - disharmonies
mapComplexMethods: aSLTestData
	<sl2Test: #complexMethods>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself