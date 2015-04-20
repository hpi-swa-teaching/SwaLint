standard queries
automaticViewerPlacement
	^ self
		valueOfFlag: #automaticViewerPlacement
		ifAbsent: [true]