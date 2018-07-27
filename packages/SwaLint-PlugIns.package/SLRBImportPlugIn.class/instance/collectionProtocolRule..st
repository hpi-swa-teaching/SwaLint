classTests
collectionProtocolRule: aSLClassTestObject

	<slTestName:  'Uses do: instead of collect: or select:'
	description: 'Checks for people using the do: method instead of using the collect: or select: methods. The collect: and select: variants express the source code''s intentions better'
	category: 'Intention revealing'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #collectionProtocolRuleMethod:
		satisfying: [:result | result isPositive]
