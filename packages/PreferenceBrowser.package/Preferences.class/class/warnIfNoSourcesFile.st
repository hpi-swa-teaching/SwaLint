standard queries
warnIfNoSourcesFile
	^ self
		valueOfFlag: #warnIfNoSourcesFile
		ifAbsent: [true]