map - 2. code quality - libraries - Booleans
mapUnoptimizedAndOr: aSLTestData
	<sl2Test: #smallLintUnoptimizedAndOr>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Booleans');
		description: aSLTestData description , ' Note that in highly performance-critical situations, using "a and: [b and: [c]]" instead of "a and: [b] and: [c]" can be acceptable to avoid extra message dispatching.';
		yourself