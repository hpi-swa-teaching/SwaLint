map - 2. code quality - libraries - Collections
mapWhileTrue: aSLTestData
	<sl2Test: #smallLintWhileTrue>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself