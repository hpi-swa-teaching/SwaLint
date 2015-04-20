standard queries
serverMode
	^ self
		valueOfFlag: #serverMode
		ifAbsent: [false]