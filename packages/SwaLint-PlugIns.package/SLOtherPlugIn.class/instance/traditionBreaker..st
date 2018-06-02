tests
traditionBreaker: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	
	^ self successResult: 
		((self excessiveInterfaceIncrease: aSLClassTestObject) and:
		[ self substantialSizeAndComplexity: aSLClassTestObject ] and:
		[ self parentNeitherSmallNorDumb: aSLClassTestObject ])