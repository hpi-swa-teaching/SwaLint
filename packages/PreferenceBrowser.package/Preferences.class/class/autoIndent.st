standard queries
autoIndent
	^ self
		valueOfFlag: #autoIndent
		ifAbsent: [true]