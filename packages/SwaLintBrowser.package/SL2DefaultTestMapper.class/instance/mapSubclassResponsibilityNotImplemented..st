map - 1. possible bugs - missing code
mapSubclassResponsibilityNotImplemented: aSLTestData
	<sl2Test: #smallLintSubclassResponsibilityNotDefined>

	^ (self makeTestFrom: aSLTestData)
		title: 'Subclass responsibility not implemented';
		addCategoryPath: #('possible bugs' 'missing code');
		description: aSLTestData description , '\\This test is not applicable to framework code that deliberately offers abstract classes for specialization. Still, you could consider testing/demonstrating your superclasses through example subclasses.' withCRs;
		yourself