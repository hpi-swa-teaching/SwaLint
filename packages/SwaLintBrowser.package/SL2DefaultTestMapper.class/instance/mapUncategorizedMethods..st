map - 2. code quality - documentation
mapUncategorizedMethods: aSLTestData
	<sl2Test: #smallLintUnclassifiedMethods>

	^ (self makeTestFrom: aSLTestData)
		title: 'Uncategorized methods';
		addCategoryPath: #('code quality' 'documentation');
		yourself