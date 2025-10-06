map - 1. possible bugs - libraries
mapSendsUnknownMessageToGlobal: aSLTestData
	<sl2Test: #smallLintSendsUnknownMessageToGlobal>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries');
		yourself