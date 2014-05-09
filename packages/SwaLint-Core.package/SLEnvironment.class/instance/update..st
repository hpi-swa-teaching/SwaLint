updating
update: aSelector

	(aSelector == #allSelections) 
		ifTrue: [^ self changed: aSelector].
	
	^ super update: aSelector