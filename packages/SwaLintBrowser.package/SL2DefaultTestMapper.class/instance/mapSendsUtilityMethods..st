map - 3. design quality - antipatterns
mapSendsUtilityMethods: aSLTestData
	<sl2Test: #smallLintUtilityMethods>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		yourself