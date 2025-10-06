map - 2. code quality - documentation
mapInconsistentMethodCategorization: aSLTestData
	<sl2Test: #smallLintInconsistentMethodClassification>

	^ (self makeTestFrom: aSLTestData)
		title: 'Inconsistent method categorization';
		addCategoryPath: #('code quality' 'documentation');
		description: aSLTestData description , '\\An exception to this rule is when you override extension methods from another package (such as Object>>browse from *Tools-Browsing).' withCRs;
		yourself