map - 3. design quality
catDesignQuality
	<sl2TestCategory>

	^ (self makeCategoryWithPath: #('design quality'))
		sortKey: 3;
		description: 'Tests that analyze the architectural quality of your software system. This includes common antipatterns in the communication between objects and the organization of logic, duplicated code, and general metrics. Note that these tests are generally NOT meant to "grade" your design quality but only point you to potentially interesting oddnesses and refactoring opportunities.';
		yourself