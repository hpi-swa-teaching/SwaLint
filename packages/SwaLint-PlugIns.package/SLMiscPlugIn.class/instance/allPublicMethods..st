class tests
allPublicMethods: aSLClassTestObject

	aSLClassTestObject shouldBeClass.

	^ SLCollectionResult 
		newWith: aSLClassTestObject methods
		select: [ :method | (method resultOf: #isPrivate) isNegative]