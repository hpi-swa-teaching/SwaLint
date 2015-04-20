standard queries
smartUpdating
	^ self
		valueOfFlag: #smartUpdating
		ifAbsent: [true]