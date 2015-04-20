standard queries
warnIfNoChangesFile
	^ self
		valueOfFlag: #warnIfNoChangesFile
		ifAbsent: [true]