tests
globalState: aSLClassTestObject

	<slTestName: 'Occurences of global state on the class side'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self successResult: aSLClassTestObject classVariables isEmpty not