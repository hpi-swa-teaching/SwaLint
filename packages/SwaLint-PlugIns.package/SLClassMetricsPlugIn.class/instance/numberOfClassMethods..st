tests
numberOfClassMethods: aSLClassTestObject
	
	<slTestName: 'Number of Class Methods [NOCM]'
	description: 'Answer the number of class methods of a class.' >

	^ self integerResult:
		aSLClassTestObject classMethods size