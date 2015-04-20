standard queries
okToReinitializeFlaps
	^ self
		valueOfFlag: #okToReinitializeFlaps
		ifAbsent: [true]