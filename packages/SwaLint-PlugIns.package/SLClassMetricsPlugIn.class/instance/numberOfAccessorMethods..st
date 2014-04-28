tests
numberOfAccessorMethods: aSLClassTestObject
	"Answer the number of accessor methods"
	
	| n |
	n := (aSLClassTestObject resultOf: #allAccessors) itemCount.
	^ (self fewManySummaryResult: n summarizing: #isAccessor)
		formatAsInteger; showAlways