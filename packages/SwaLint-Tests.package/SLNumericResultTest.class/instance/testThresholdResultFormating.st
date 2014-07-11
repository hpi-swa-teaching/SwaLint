tests
testThresholdResultFormating

	| result |
	
	result := SLNumericResult newWithValue: 3.14159265 low: 2 high: 4.
	result formatAccurateToATenth.
	self assert: [result valueAsString = '3.1 (average)'].

	result := SLNumericResult newWithValue: 3.14159265 low: 2 high: 4.	
	result formatAsInteger.
	self assert: [result valueAsString = '3 (average)'].
	
	result := SLNumericResult newWithValue: 3.14159265 low: 2 high: 4.
	result formatAsPercentage.
	self assert: [result valueAsString = '314% (average)'].