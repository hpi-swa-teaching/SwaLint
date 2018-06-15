class tests
allAccessors: aSLClassTestObject

	<slTestName: nil 
	description: 'Collection of all accessors of a class'>

	aSLClassTestObject shouldBeClass.
	^ SLCollectionResult 
		newWith: aSLClassTestObject instanceMethods
		select: [ :method | (method resultOf: #isAccessor:) isPositive]