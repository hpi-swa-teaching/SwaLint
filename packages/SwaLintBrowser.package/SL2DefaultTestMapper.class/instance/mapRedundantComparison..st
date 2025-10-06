map - 1. possible bugs - syntax
mapRedundantComparison: aSLTestData
	<sl2Test: #smallLintEqualNotUsed>

	^ (self makeTestFrom: aSLTestData)
		title: 'Redundant comparison operator';
		addCategoryPath: #('possible bugs' 'syntax');
		description: 'Statements that send a binary comparison message such as #= or #~= but do not use the result. Check whether this operation is not required, or whether you intended to perform an assignment instead.';
		yourself