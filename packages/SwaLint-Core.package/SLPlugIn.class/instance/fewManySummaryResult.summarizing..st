results
fewManySummaryResult: aNumber summarizing: aTestSelector

	^ (SLSummaryResult newFewMany: aNumber)
		summarizing: aTestSelector
		condition: nil