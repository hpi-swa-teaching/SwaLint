tests
classCount: aSLSystemTestObject

	<slTestName: 'Overall number of classes'
	description: 'Number of classes.'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allClasses size