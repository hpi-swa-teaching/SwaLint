as yet unclassified
precedenceRule: aSLClassTestObject

	<slTestName:  'Possible occurences of A + B * C should be A + (B * C) (Precedence)'
	description: 'A + B * C should maybe be A + ( B * C). Also checks for division (/) and integer division (//)'
	category: 'Bugs'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #precedenceRuleMethod:
		satisfying: [:result | result isPositive]