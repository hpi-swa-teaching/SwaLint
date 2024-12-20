map - 3. design quality - antipatterns
mapLawOfDemeter: aSLTestData
	<sl2Test: #lawOfDemeterRule>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		yourself