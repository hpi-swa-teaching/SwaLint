accessing - toolbuilder
labelForMessage: message

	| count label |
	label := message asString.
	count := (self resultsForTestAndClassSelectionAndMessage: message) size.
	count = 1 ifTrue: [^ label].
	^ '{1} ({2})' format: {label. count}