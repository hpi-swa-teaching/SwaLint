standard queries
fenceEnabled
	^ self
		valueOfFlag: #fenceEnabled
		ifAbsent: [true]