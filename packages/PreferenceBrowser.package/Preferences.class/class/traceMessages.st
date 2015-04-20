standard queries
traceMessages
	^ self
		valueOfFlag: #traceMessages
		ifAbsent: [false]