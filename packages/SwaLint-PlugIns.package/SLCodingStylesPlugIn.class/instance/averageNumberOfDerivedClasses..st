tests
averageNumberOfDerivedClasses: aSLSystemTestObject

	<slTestName: 'Average Number of Derived Classes [ANDC]'
	description: 'Answers the average number of derived classes of the tested system.'>

	aSLSystemTestObject shouldBeSystem.
	^ self numericResult: (self averageNumberOfDerivedClassesOf: aSLSystemTestObject)