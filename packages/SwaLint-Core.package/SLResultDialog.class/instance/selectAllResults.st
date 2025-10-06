accessing-results
selectAllResults

	self isMultiSelectable ifTrue: [
		self resultsSelected: (self results select: [:each | each hasDetails]) asIdentitySet.
		self changed: #resultSelected; update.]