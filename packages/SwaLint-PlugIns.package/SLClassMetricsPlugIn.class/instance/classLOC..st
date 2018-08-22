tests
classLOC: aSLClassTestObject

	<slTestName: 'Lines of Code of a class [LOC]'
	description: 'Answers a classes number of lines of code.' >

	^ self integerResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodLOC:)
		withThresholdFor: #ClassLOC