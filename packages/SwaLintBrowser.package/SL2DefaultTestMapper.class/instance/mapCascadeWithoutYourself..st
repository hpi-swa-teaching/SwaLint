map - 1. possible bugs - syntax
mapCascadeWithoutYourself: aSLTestData
	<sl2Test: #smallLintMissingYourself>

	self flag: #discuss. "ct: could be intentional"
	^ (self makeTestFrom: aSLTestData)
		title: 'Cascade without #yourself';
		addCategoryPath: #('possible bugs' 'syntax');
		description: aSLTestData description , '\\Note that this can also be a valid pattern such as "uniqueCoutn := Set new addAll: ''hello world''; size".' withCRs;
		yourself