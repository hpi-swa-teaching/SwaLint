map - 2. code quality - syntax
mapUnusedVariables: aSLTestData
	<sl2Test: #smallLintOnlyReadOrWrittenVariable>

	self flag: #todo. "duplication with #mapUnreferencedVariable: and #mapUnreferencedVariables:"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'syntax');
		yourself