map - 3. design quality - disharmonies
mapExcessiveMethods: aSLTestData
	<sl2Test: #smallLintExcessiveMethods>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself