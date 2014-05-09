accessing
listSelectionAt: anIndex put: aValue 
	
	(aValue not or: [self multipleSelections]) 
		ifTrue: [super listSelectionAt: anIndex put: aValue]
		ifFalse: [
			selection := {anIndex -> true} as: Dictionary.
			self selectionsChanged].