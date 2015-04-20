standard queries
checkForUnsavedProjects
	^ self
		valueOfFlag: #checkForUnsavedProjects
		ifAbsent: [true]