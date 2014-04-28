method tests
isAccessor: aSLMethodTestObject

	^ self booleanResult:
		((aSLMethodTestObject resultOf: #isGetter) isPositive or: 
		[(aSLMethodTestObject resultOf: #isSetter) isPositive])