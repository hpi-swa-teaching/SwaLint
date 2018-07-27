classTests
toDoCollectRule: aSLClassTestObject

	<slTestName:  'to:do: doesn''t use collect:'
	description: 'Checks for users of to:do: when the shorter collect: would work'
	category: 'Intention revealing'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #toDoCollectRuleMethod:
		satisfying: [:result | result isPositive]
