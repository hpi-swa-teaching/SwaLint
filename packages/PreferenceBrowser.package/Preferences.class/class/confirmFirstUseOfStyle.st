standard queries
confirmFirstUseOfStyle
	^ self
		valueOfFlag: #confirmFirstUseOfStyle
		ifAbsent: [true]