map - 3. design quality - disharmonies
mapGodClass: aSLTestData
	<sl2Test: #godClass>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself