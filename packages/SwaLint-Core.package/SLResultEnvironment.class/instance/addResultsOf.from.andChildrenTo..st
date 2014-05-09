results
addResultsOf: testCollection from: aSLTestObject andChildrenTo: aCollection
	
	self addResultsOf: testCollection from: aSLTestObject to: aCollection.
	aSLTestObject children do: [ :each |
		self addResultsOf: testCollection from: each andChildrenTo: aCollection].
	^ aCollection