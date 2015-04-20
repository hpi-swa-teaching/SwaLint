standard queries
debugHaloHandle
	^ self
		valueOfFlag: #debugHaloHandle
		ifAbsent: [true]