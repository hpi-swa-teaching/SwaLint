map - 3. design quality - disharmonies
mapExcessiveVariables: aSLTestData
	<sl2Test: #smallLintExcessiveVariables>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself