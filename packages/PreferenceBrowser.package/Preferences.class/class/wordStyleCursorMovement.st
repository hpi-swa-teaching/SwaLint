standard queries
wordStyleCursorMovement
	^ self
		valueOfFlag: #wordStyleCursorMovement
		ifAbsent: [true]