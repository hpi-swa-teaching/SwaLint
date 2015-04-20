standard queries
compactViewerFlaps
	^ self
		valueOfFlag: #compactViewerFlaps
		ifAbsent: [false]