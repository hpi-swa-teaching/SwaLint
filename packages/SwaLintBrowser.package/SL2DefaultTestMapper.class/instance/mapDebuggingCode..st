map - 2. code quality - redundant code
mapDebuggingCode: aSLTestData
	<sl2Test: #smallLintCodeCruftLeftInMethods>

	self flag: #todo. "handle flags separately?"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'redundant code');
		description: aSLTestData description , '\\Note that the use of flags (self flag: #todo. "explaining comment") to document open issues such as technical debt is a good practice.' withCRs;
		yourself