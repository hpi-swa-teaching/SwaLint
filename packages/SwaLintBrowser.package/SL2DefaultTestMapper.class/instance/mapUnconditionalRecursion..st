map - 1. possible bugs - syntax
mapUnconditionalRecursion: aSLTestData
	<sl2Test: #smallLintUnconditionalRecursion>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'syntax');
		yourself