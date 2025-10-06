map - 2. code quality - metadata
mapSuspiciousAuthorInitials: aSLTestData
	<sl2Test: #suspiciousAuthorInitials>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'metadata');
		yourself