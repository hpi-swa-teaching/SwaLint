standard queries
cmdDotEnabled
	^ self
		valueOfFlag: #cmdDotEnabled
		ifAbsent: [true]