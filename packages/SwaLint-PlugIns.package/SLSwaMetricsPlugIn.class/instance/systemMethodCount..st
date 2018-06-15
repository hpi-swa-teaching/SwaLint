tests
systemMethodCount: aSLSystemTestObject

	<slTestName: 'Overall number of methods' 
	description: nil >

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allMethods size