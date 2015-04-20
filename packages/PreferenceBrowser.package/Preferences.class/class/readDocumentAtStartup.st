standard queries
readDocumentAtStartup
	^ self
		valueOfFlag: #readDocumentAtStartup
		ifAbsent: [true]