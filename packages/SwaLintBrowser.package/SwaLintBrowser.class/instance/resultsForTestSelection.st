accessing
resultsForTestSelection

	self hasTestNodeSelected ifFalse: [^ self results].
	
	^ self resultsForTestNode: self selectedTestNode