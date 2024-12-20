accessing
results: aCollection

	results := aCollection.
	self selectTestNode: self selectedTestNode. "reselect to update other panes"
	self changed: #results.