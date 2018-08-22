accessing-categories
selectString

	^ self selectByCategory
		ifTrue: ['Select by package']
		ifFalse: ['Select by category']