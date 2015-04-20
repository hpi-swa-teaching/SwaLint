standard queries
alternateHandlesLook
	^ self
		valueOfFlag: #alternateHandlesLook
		ifAbsent: [true]