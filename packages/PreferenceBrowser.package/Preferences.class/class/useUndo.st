standard queries
useUndo
	^ self
		valueOfFlag: #useUndo
		ifAbsent: [true]