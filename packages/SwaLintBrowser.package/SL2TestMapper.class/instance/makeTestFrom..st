creation
makeTestFrom: aSLTestData

	^ (self basicMakeTestFrom: aSLTestData)
		title: aSLTestData name;
		addCategoryPath: {'(legacy structure)'. aSLTestData category};
		description: aSLTestData description;
		yourself