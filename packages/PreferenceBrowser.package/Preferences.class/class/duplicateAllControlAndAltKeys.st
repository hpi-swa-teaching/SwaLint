standard queries
duplicateAllControlAndAltKeys
	^ self
		valueOfFlag: #duplicateAllControlAndAltKeys
		ifAbsent: [true]