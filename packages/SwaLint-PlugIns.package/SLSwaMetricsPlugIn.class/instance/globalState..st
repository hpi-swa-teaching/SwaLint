tests
globalState: aSLClassTestObject

	<slTestName: 'Occurences of global state on the class side'
	description: 'Doing so without being aware of this is dangerous. Make sure that there is a way to reset it if neccessary.'>

	aSLClassTestObject shouldBeClass.
	^ self successResult: aSLClassTestObject classVariables isEmpty not