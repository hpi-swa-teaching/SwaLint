results
summarizeNumberOf: aCollection withResultOf: aTest

	^ self 
		summaryResult: 
			(aCollection count: [ :each | (each resultOf: aTest) isPositive])
		summarizing: aTest