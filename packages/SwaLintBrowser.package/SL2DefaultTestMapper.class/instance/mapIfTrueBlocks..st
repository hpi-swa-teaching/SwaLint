map - 2. code quality - libraries - Kernel
mapIfTrueBlocks: aSLTestData
	<sl2Test: #smallLintIfTrueBlocks>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Kernel');
		yourself