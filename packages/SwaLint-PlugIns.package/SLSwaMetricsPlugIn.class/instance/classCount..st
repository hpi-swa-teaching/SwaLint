tests
classCount: aSLSystemTestObject

	<slTestName: 'Overall number of classes'
	description: nil>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allClasses size