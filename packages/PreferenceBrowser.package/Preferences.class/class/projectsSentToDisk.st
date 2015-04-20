standard queries
projectsSentToDisk
	^ self
		valueOfFlag: #projectsSentToDisk
		ifAbsent: [false]