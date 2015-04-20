standard queries
oliveHandleForScriptedObjects
	^ self
		valueOfFlag: #oliveHandleForScriptedObjects
		ifAbsent: [true]