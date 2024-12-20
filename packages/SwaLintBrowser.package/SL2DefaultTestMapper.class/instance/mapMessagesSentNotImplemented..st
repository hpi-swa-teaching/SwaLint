map - 1. possible bugs - missing code
mapMessagesSentNotImplemented: aSLTestData
	<sl2Test: #smallLintSentNotImplemented>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'missing code');
		yourself