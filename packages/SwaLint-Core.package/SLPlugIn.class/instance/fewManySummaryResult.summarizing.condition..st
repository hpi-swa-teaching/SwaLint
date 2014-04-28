results
fewManySummaryResult: aNumber summarizing: aTestSelector condition: aBlock

	^ (SLSummaryResult newFewMany: aNumber)
		summarizing: aTestSelector
		condition: aBlock