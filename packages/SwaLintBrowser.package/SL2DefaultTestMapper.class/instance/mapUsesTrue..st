map - 1. possible bugs - libraries - Kernel
mapUsesTrue: aSLTestData
	<sl2Test: #smallLintUsesTrue>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Kernel');
		yourself