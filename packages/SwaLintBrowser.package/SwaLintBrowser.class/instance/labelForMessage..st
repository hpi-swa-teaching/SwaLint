accessing - toolbuilder
labelForMessage: message

	| label messageResults count |
	label := message asString.
	messageResults := self resultsForTestAndClassSelectionAndMessage: message.
	count := messageResults size.
	count = 1 ifFalse:
		[label := '{1} ({2})' format: {label. count}].
	
	(messageResults anySatisfy: [:result | result isOutOfSync]) ifTrue:
		[label := label asText
			addAttribute: (TextColor color: Color gray);
			yourself].
	
	^ label