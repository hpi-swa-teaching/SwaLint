map - 2. code quality - libraries - Kernel
mapEmptyExceptionHandler: aSLTestData
	<sl2Test: #smallLintEmptyExceptionHandler>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Kernel');
		yourself