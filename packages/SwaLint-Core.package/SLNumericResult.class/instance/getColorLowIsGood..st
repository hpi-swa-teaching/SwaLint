threshold
getColorLowIsGood: aSymbol

	(aSymbol = #veryHigh) ifTrue: [^ self class red].
	(aSymbol = #high) ifTrue: [^ self class orange].
	(aSymbol = #average) ifTrue: [^ self class yellow].
	^ self class green