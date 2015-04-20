standard queries
annotationPanes
	^ self
		valueOfFlag: #annotationPanes
		ifAbsent: [true]