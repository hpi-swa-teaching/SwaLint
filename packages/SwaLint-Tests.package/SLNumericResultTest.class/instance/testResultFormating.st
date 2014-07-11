tests
testResultFormating

	| result |
	result := SLNumericResult newWithValue: 3.14159265.

	result formatAccurateToATenth.
	self assert: [result valueAsString = '3.1'].
	
	result := SLNumericResult newWithValue: 3.14159265.
	result formatAsInteger.
	self assert: [result valueAsString = '3'].
	
	result := SLNumericResult newWithValue: 3.14159265.
	result formatAsPercentage.
	self assert: [result valueAsString = '314%'].