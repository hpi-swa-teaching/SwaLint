tests
longMethods: aSLClassTestObject

	<slTestName: 'Long Methods'
	description: nil >

	aSLClassTestObject shouldBeClass.
	^ self 
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodLOC:
		satisfying: [ :result | result > #average]