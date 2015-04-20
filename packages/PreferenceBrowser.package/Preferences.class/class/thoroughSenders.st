standard queries
thoroughSenders
	^ self
		valueOfFlag: #thoroughSenders
		ifAbsent: [true]