tests
traditionBreaker: aSLClassTestObject

	<slTestName: 'Tradition Breaker' 
	description: 'A Tradition Breaker is a Class that breaks the inherited "tradition". It provides a large set of services which are unrelated to those provided by its base class.'>

	aSLClassTestObject shouldBeClass.
	
	^ self successResult: 
		((self excessiveInterfaceIncrease: aSLClassTestObject) and:
		[ self substantialSizeAndComplexity: aSLClassTestObject ] and:
		[ self parentNeitherSmallNorDumb: aSLClassTestObject ])