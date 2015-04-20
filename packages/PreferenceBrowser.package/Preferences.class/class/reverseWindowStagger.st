standard queries
reverseWindowStagger
	^ self
		valueOfFlag: #reverseWindowStagger
		ifAbsent: [true]