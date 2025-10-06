map - 3. design quality - antipatterns
mapSendsDifferentSuper: aSLTestData
	<sl2Test: #smallLintSendsDifferentSuper>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		yourself