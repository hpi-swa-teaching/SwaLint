standard queries
startInUntrustedDirectory
	^ self
		valueOfFlag: #startInUntrustedDirectory
		ifAbsent: [false]