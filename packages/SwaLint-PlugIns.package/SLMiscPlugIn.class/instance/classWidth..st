class tests
classWidth: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ (SLNumericResult newWithValue: 
		(aSLClassTestObject methods inject: 0 into: [ :w :method |
			w max: (method resultOf: #methodWidth)])) formatAsInteger