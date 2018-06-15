tests
systemMethodCount: aSLSystemTestObject

	<slTestName: 'Overall number of methods' 
	description: 'Number of methods'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allMethods size