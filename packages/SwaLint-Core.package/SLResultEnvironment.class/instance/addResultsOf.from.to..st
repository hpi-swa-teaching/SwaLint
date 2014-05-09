results
addResultsOf: testCollection from: aSLTestObject to: aCollection
	
	aSLTestObject ifNil: [^ aCollection].
	^ aCollection addAll: 
		(aSLTestObject selectResults: testCollection)