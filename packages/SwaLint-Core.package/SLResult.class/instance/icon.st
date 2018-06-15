accessing
icon

	^ SwaLint ColorizeResults
		ifTrue: [icon]
		ifFalse: [nil]