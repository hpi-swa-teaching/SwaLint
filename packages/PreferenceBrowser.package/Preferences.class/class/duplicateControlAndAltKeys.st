standard queries
duplicateControlAndAltKeys
	^ self
		valueOfFlag: #duplicateControlAndAltKeys
		ifAbsent: [false]