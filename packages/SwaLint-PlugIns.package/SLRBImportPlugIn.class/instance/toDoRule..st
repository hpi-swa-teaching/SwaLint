as yet unclassified
toDoRule: aSLClassTestObject

	<slTestName:  'Uses to:do: instead of do:, with:do:'
	description: 'Checks for people using to:do: when a do:, with:do: should be used. Looks for methods using #to: anObject size do: [:index], that do access anObject using #at: index'
	category: 'Intention revealing'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #toDoRuleMethod:
		satisfying: [:result | result isPositive]
