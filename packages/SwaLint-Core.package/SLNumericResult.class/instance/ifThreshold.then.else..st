comparing
ifThreshold: aSymbol then: thenBlock else: elseBlock

	| t |
	t := self thresholdToInt: aSymbol.
	^ (t > -1) 
		ifTrue: [thenBlock valueWithPossibleArgument: t]
		ifFalse: [elseBlock value]