map - 1. possible bugs - libraries - Kernel
mapAddRemoveDependents: aSLTestData
	<sl2Test: #smallLintAddRemoveDependents>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Kernel');
		yourself