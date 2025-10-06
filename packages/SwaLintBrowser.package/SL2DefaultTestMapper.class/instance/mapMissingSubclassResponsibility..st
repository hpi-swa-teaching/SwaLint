map - 3. design quality - refactoring opportunities
mapMissingSubclassResponsibility: aSLTestData
	<sl2Test: #smallLintMissingSubclassResponsibility>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'refactoring opportunities');
		yourself