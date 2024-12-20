map - 3. design quality - antipatterns
mapAbstractClass: aSLTestData
	<sl2Test: #smallLintAbstractClass>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		yourself