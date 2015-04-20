standard queries
logDebuggerStackToFile
	^ self
		valueOfFlag: #logDebuggerStackToFile
		ifAbsent: [true]