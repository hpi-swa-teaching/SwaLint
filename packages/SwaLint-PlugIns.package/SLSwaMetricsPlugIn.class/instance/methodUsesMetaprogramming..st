private
methodUsesMetaprogramming: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject testObject literals 
		includesAnyOf: self evilMethods)