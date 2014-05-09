threshold
getColorLowIsBad: aSymbol

	(aSymbol = #veryHigh) ifTrue: [^ self class green].
	(aSymbol = #high) ifTrue: [^ self class yellow].
	(aSymbol = #average) ifTrue: [^ self class orange].
	^ self class red