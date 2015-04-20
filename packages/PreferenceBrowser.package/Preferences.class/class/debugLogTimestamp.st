standard queries
debugLogTimestamp
	^ self
		valueOfFlag: #debugLogTimestamp
		ifAbsent: [false]