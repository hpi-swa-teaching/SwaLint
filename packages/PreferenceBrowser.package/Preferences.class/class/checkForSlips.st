standard queries
checkForSlips
	^ self
		valueOfFlag: #checkForSlips
		ifAbsent: [true]