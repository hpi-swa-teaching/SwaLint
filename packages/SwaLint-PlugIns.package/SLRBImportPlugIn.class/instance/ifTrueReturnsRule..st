classTests
ifTrueReturnsRule: aSLClassTestObject

	<slTestName:  'ifTrue:/ifFalse: returns instead of and:/or:''s'
	description: 'Checks for simple ifTrue: returns that could be simplified using a boolean expression.'
	category:  'Intention revealing'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #ifTrueReturnsRuleMethod:
		satisfying: [:result | result isPositive ]
