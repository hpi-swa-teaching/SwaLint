threshold
getColorManyIsBad: aSymbol

	(aSymbol = #tooMany) ifTrue: [^ self class red].
	(aSymbol = #many) ifTrue: [^ self class orange].
	(aSymbol = #several) ifTrue: [^ self class yellow].
	^ self class green