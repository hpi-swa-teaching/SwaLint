class tests
allPublicMethods: aSLClassTestObject

	<slTestName: nil 
	description: 'Collection of all public methods of a class'>

	aSLClassTestObject shouldBeClass.
	^ SLCollectionResult 
		newWith: aSLClassTestObject methods
		select: [ :method | (method resultOf: #isPrivate:) isNegative ]