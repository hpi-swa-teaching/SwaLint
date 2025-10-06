map - 2. code quality - metadata
mapMethodSourceContainsLinefeeds: aSLTestData
	<sl2Test: #smallLintMethodSourceContainsLinefeeds>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'metadata');
		description: 'Line breaks in Squeak are typically modelled as carriage returns (Character cr). Methods that contain linefeeds (Character lf) instead break this convention. When saving or loading methods to or from Monticello or git, all line breaks are normalized.

If you did not mean to use linefeeds, avoid holding the Shift or Command key while pressing Enter.';
		yourself