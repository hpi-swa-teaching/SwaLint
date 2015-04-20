standard queries
restartAlsoProceeds
	^ self
		valueOfFlag: #restartAlsoProceeds
		ifAbsent: [true]