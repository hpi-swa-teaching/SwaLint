tests
testHasDetails
	| summaryResult |

	summaryResult := SLNumericResult new.
	summaryResult testObject: SLClassTestObject new. 
	self assert: true equals: summaryResult hasDetails.

	summaryResult testObject: SLMethodTestObject new. 
	self assert: true equals: summaryResult hasDetails.