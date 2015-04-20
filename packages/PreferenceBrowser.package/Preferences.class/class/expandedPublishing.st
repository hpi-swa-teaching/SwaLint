standard queries
expandedPublishing
	^ self
		valueOfFlag: #expandedPublishing
		ifAbsent: [true]