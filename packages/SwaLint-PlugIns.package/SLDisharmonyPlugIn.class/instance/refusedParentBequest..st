tests
refusedParentBequest: aSLClassTestObject

	<slTestName: 'Refused Parent Bequest' 
	description: 'A Tradition Breaker is a Class that breaks the inherited "tradition". It provides a large set of services which are unrelated to those provided by its base class.'>

	aSLClassTestObject shouldBeClass.
	
	^ self successResult: 
		((self substantialSizeAndComplexity: aSLClassTestObject) and:
		[ self ignoresBequest: aSLClassTestObject ])