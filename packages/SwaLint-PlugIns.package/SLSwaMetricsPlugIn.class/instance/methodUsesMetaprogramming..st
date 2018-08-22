private
methodUsesMetaprogramming: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject testObject literals 
		includesAnyOf: self evilMethods)