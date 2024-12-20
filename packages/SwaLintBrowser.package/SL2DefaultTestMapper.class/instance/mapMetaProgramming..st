map - 3. design quality - antipatterns
mapMetaProgramming: aSLTestData
	<sl2Test: #metaProgramming>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		yourself