tests
numberOfMethods: aSLClassTestObject

	<slTestName: 'Number of methods [NOM]'
	description: 'Answer the total number of methods in a class' >
	
	^ self integerResult:
		aSLClassTestObject methods size 
		withThresholdFor: #NumberOfMethods