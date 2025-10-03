actions
deleteSelectedResults

	| messageIndex |
	messageIndex := self selectedMessageIndex.
	
	self results removeAll: self resultsForTestAndMessageSelection.
	self changed: #results.
	
	self selectMessageIndex: (messageIndex clampHigh: self messages size).