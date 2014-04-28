results
summarizeNumberOf: aCollection withResultOf: aTest satisfying: aBlock

	^ self 
		summaryResult: 
			(aCollection count: [ :each | aBlock value: (each resultOf: aTest)])
		summarizing: aTest
		condition: aBlock