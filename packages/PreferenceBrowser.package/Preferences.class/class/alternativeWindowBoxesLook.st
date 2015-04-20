standard queries
alternativeWindowBoxesLook
	^ self
		valueOfFlag: #alternativeWindowBoxesLook
		ifAbsent: [true]