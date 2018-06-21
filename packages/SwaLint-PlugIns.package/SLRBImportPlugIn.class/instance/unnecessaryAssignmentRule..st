as yet unclassified
unnecessaryAssignmentRule: aSLClassTestObject

	<slTestName:  'Unnecessary assignment to a temporary variable'
	description: 'Checks for assignements to temporaries that are not used afterwards.'>
	
	"INCOMPLETE -- can not differentiate between temporary and class variables"
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #unnecessaryAssignmentRuleMethod:
		satisfying: [:result | result isPositive ]
