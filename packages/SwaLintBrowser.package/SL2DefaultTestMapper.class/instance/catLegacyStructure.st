map - (legacy structure)
catLegacyStructure
	<sl2TestCategory>

	^ (self makeCategoryWithPath: #('(legacy structure)'))
		sortKey: Float negativeInfinity;
		description: 'Alternative organization of tests from the classic SwaLint. If we did a good job, the new one is better!';
		yourself