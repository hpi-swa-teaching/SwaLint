accessing
format: aRule

	| t |
	t := (aRule = #classes)
		ifTrue: [self testObject]
		ifFalse: [self testData].
	^ t ifNotNil: [t name asText allBold] ifNil: [self noResultText]