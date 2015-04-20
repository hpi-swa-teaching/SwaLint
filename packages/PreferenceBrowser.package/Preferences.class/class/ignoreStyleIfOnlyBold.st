standard queries
ignoreStyleIfOnlyBold
	^ self
		valueOfFlag: #ignoreStyleIfOnlyBold
		ifAbsent: [true]