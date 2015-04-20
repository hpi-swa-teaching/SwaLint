standard queries
purgeUndoOnQuit
	^ self
		valueOfFlag: #purgeUndoOnQuit
		ifAbsent: [true]