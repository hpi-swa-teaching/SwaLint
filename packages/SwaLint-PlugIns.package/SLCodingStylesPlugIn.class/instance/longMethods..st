tests
longMethods: aSLClassTestObject

	<slTestName: 'Long Methods'
	description: 'Returns all methods that have too much lines. This does count blank lines and comments. It does NOT count statements.' >

	aSLClassTestObject shouldBeClass.
	^ self 
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodLOC:
		satisfying: [ :result | result > #average]