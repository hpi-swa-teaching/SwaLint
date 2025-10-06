accessing - toolbuilder
labelForClass: aClass

	| count label |
	label := aClass asString.
	count := (self resultsForTestSelectionAndClass: aClass) size.
	^ '{1} ({2})' format: {label. count}