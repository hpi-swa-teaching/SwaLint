standard queries
viewersInFlaps
	^ self
		valueOfFlag: #viewersInFlaps
		ifAbsent: [true]