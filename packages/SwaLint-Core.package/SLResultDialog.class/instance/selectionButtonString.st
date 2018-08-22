accessing
selectionButtonString

	^ self isMultiSelectable 
		ifTrue: ['Single select']
		ifFalse: ['Multi select']