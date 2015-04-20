standard queries
promptForUpdateServer
	^ self
		valueOfFlag: #promptForUpdateServer
		ifAbsent: [true]