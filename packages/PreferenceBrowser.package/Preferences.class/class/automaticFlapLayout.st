standard queries
automaticFlapLayout
	^ self
		valueOfFlag: #automaticFlapLayout
		ifAbsent: [true]