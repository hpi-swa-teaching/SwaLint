map - 2. code quality - libraries - Kernel
mapOverridesSpecialMessage: aSLTestData
	<sl2Test: #smallLintOverridesSpecialMessage>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Kernel');
		yourself