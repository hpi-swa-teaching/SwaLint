map - 3. design quality - antipatterns
mapBadMessage: aSLTestData
	<sl2Test: #smallLintBadMessage>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		yourself