standard queries
debugPrintSpaceLog
	^ self
		valueOfFlag: #debugPrintSpaceLog
		ifAbsent: [false]