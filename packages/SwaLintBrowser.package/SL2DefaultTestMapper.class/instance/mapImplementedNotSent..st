map - 2. code quality - redundant code
mapImplementedNotSent: aSLTestData
	<sl2Test: #smallLintImplementedNotSent>

	self flag: #todo. "overlaps with #mapMethodsWithoutSenders:. This one might be less sensitive for class-side methods, the other one too specific for methods with pragmas..."
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'redundant code');
		description: aSLTestData description , '\\This test is not applicable to framework code that deliberately offers public interfaces. Still, you could consider testing/demonstrating these interfaces through examples.' withCRs;
		yourself