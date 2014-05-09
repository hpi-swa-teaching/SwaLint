results
summaryResult: aNumber summarizing: aTestSelector condition: aBlock

	^ SLSummaryResult 
		newWithValue: aNumber 
		summarizing: aTestSelector
		condition: aBlock