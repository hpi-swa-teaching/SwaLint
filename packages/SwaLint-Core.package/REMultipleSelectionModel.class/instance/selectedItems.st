selections
selectedItems
	| index |
	index := 0.
	^list select:
		[:each | index := index + 1.
		 self listSelectionAt: index]