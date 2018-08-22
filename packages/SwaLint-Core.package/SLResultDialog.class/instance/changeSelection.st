actions
changeSelection

	self toggleSelection.
	self isMultiSelectable ifFalse: [self selectNoResults].