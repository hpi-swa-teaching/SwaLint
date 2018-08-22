tests
dataClass: aSLClassTestObject

	<slTestName: 'Data class' 
	description: 'A Data Class is a dumb dataholder. Functionality is probably implemented in other classes which breaks with design principles like encapsulation and data hiding.'>

	aSLClassTestObject shouldBeClass.
	
	^ self successResult:
		(((aSLClassTestObject resultOf: #weightOfClass:) < (1/3)) and:
			[self looksLikeDataClass: aSLClassTestObject])