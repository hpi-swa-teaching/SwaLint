map - 1. possible bugs - libraries
mapMissingSuperSends: aSLTestData
	<sl2Test: #smallLintMissingSuperSends>

	^ (self makeTestFrom: aSLTestData)
		title: 'Missing super sends';
		addCategoryPath: #('possible bugs' 'libraries');
		yourself