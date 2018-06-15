tests
methodsNeedAttention: aSLClassTestObject

	<slTestName: 'Methods need attention'
	description: 'Answer the number of Methods that contain debugging leftovers.' >

	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodNeedsAttention: 
		satisfying: [ :result | result isPositive ]