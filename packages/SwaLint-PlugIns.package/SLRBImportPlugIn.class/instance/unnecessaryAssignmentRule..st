as yet unclassified
unnecessaryAssignmentRule: aSLClassTestObject
	
	"If you have an older Squeak version and run the unneccessary assignment rule, you wil get an ERROR result, which is the intended behavior. Thats because older Squeak versions (5.1 or older) do not support getting tempNames of an variable (CompiledMethod >> tempNames)"
	
	<slTestName:  'Unnecessary assignment to a temporary variable'
	description: 'Checks for assignements to temporaries that are not used afterwards.'
	category: 'Unnecessary code'>
	
	"INCOMPLETE -- can not differentiate between temporary and class variables"
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #unnecessaryAssignmentRuleMethod:
		satisfying: [:result | result isPositive ]
