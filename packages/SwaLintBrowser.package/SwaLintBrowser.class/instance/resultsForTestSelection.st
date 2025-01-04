accessing
resultsForTestSelection
	<uses: #(selectedTestNode displayedResults)>

	^ self cached:
		[self hasTestNodeSelected
			ifFalse: [self displayedResults]
			ifTrue: [self resultsForTestNode: self selectedTestNode]]