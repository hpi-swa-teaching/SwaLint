selections
selectAll
	1 to: list size do:[:each | selection at: each put: true].
	self changed: #allSelections.