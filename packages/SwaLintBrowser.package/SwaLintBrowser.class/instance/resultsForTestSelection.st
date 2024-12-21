accessing
resultsForTestSelection

	self hasTestNodeSelected ifFalse: [^ self displayedResults].
	
	^ self resultsForTestNode: self selectedTestNode