tests
numberOfAccessorMethods: aSLClassTestObject

	<slTestName: 'Number of Accessor Methods [NOAM]'
	description: 'Answer the number of accessor methods of a class.' >

	| n |
	n := (aSLClassTestObject resultOf: #allAccessors:) itemCount.
	^ (self fewManySummaryResult: n summarizing: #isAccessor:)
		formatAsInteger; showAlways