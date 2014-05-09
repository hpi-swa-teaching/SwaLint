class tests
allAccessors: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ SLCollectionResult 
		newWith: aSLClassTestObject instanceMethods
		select: [ :method | (method resultOf: #isAccessor) isPositive]