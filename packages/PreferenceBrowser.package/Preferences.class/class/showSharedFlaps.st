standard queries
showSharedFlaps
	^ self
		valueOfFlag: #showSharedFlaps
		ifAbsent: [true]