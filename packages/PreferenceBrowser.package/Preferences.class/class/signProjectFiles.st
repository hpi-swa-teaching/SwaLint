standard queries
signProjectFiles
	^ self
		valueOfFlag: #signProjectFiles
		ifAbsent: [true]