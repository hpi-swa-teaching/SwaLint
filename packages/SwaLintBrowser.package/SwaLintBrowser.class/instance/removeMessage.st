actions
removeMessage

	^ super removeMessage
		ifTrue: [contents := nil. self changed: #contents];
		yourself