map - 2. code quality - libraries - Kernel
mapSuperSendsNew: aSLTestData
	<sl2Test: #smallLintSuperSendsNew>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Kernel');
		yourself