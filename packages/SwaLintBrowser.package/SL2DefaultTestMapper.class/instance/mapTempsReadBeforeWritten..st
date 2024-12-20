map - 2. code quality - syntax
mapTempsReadBeforeWritten: aSLTestData
	<sl2Test: #smallLintTempsReadBeforeWritten>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself