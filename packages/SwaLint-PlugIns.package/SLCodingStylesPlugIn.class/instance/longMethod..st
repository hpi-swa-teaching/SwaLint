tests
longMethod: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self 
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodLOC 
		satisfying: [ :result | result > #average]