map - 1. possible bugs - syntax
mapUncommonMessageSend: aSLTestData
	<sl2Test: #smallLintUncommonMessageSend>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'syntax');
		yourself