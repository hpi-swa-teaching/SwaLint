accessing - toolbuilder
labelForTestNode: node

	| count label |
	label := node isCategory
		ifTrue: [node anyTitle]
		ifFalse: [node title].
	count := (self resultsForTestNode: node) size.
	^ '{1} ({2})' format: {label. count}