tests
averageHierarchyHight: aSLSystemTestObject

	<slTestName: 'Average Hierarchy Height [AHH]'
	description: 'Answers the average hierarchy height of the tested system.'>

	aSLSystemTestObject shouldBeSystem.
	^ self numericResult: (self averageHierarchyHightOf: aSLSystemTestObject)