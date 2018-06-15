tests
testHasDetails
	| numericResult |
	
	numericResult := SLNumericResult new.
	numericResult testObject: SLClassTestObject new. 
	self assert: true equals: numericResult hasDetails.

	numericResult testObject: SLMethodTestObject new. 
	self assert: true equals: numericResult hasDetails.

	numericResult testObject: SLTestObject new. 
	self assert: false equals: numericResult hasDetails.