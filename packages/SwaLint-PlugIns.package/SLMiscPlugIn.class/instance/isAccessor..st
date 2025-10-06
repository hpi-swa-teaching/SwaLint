method tests
isAccessor: aSLMethodTestObject

	<slTestName: nil 
	description: 'Method ist getter or setter'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult:
		((aSLMethodTestObject resultOf: #isGetter:) isPositive or: 
		[ (aSLMethodTestObject resultOf: #isSetter:) isPositive ])