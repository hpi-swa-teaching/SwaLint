standard queries
selectiveHalos
	^ self
		valueOfFlag: #selectiveHalos
		ifAbsent: [true]