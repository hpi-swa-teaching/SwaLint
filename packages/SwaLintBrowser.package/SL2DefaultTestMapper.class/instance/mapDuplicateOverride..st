map - 2. code quality - syntax
mapDuplicateOverride: aSLTestData
	<sl2Test: #smallLintEquivalentSuperclassMethods>

	^ (self makeTestFrom: aSLTestData)
		title: 'Duplicate override';
		addCategoryPath: #('code quality' 'syntax');
		yourself