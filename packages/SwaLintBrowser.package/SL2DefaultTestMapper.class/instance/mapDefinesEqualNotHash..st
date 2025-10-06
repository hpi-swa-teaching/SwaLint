map - 1. possible bugs - libraries - Kernel
mapDefinesEqualNotHash: aSLTestData
	<sl2Test: #smallLintDefinesEqualNotHash>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Kernel');
		yourself