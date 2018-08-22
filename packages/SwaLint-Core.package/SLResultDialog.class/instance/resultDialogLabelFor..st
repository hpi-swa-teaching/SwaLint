browsing
resultDialogLabelFor: aSet

	^ (aSet size > 1 
		ifTrue: ['Issues for selected tests on selected objects']
		ifFalse: ['Issues for "', aSet anyOne name, '" on selected objects']), 
	' (', self environment timeString, ')'