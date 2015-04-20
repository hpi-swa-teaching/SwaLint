standard queries
swapMouseButtons
	^ self
		valueOfFlag: #swapMouseButtons
		ifAbsent: [false]