standard queries
capitalizedReferences
	^ self
		valueOfFlag: #capitalizedReferences
		ifAbsent: [true]