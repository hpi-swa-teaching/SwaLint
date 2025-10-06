map - 3. design quality - disharmonies
mapExcessiveArguments: aSLTestData
	<sl2Test: #smallLintExcessiveArguments>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself