map - 1. possible bugs
catPossibleBugs
	<sl2TestCategory>

	^ (self makeCategoryWithPath: #('possible bugs'))
		sortKey: 1;
		description: 'Tests that regard the functionality of packages. They are aimed to detect common slips (such as misuses and missing code) with a high precision, making it possible to review them on a regular basis.';
		yourself