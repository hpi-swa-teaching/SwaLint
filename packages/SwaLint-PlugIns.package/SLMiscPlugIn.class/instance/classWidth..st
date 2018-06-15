class tests
classWidth: aSLClassTestObject

	<slTestName: nil 
	description: 'Maximum method width'>

	aSLClassTestObject shouldBeClass.
	^ (SLNumericResult newWithValue: 
		(aSLClassTestObject methods inject: 0 into: [ :w :method |
			w max: (method resultOf: #methodWidth)])) formatAsInteger