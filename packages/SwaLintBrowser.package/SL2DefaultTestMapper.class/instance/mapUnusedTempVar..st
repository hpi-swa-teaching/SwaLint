map - 2. code quality - syntax
mapUnusedTempVar: aSLTestData
	<sl2Test: #smallLintOnlyReadOrWrittenTemporary>

	^ (self makeTestFrom: aSLTestData)
		title: 'Unused temporary variable';
		addCategoryPath: #('code quality' 'syntax');
		yourself