map - 3. design quality - antipatterns
mapMagicNumbers: aSLTestData
	<sl2Test: #magicNumbers>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns');
		addCategoryPath: #('<SWA critical>');
		yourself