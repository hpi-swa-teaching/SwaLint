standard queries
maintainHalos
	^ self
		valueOfFlag: #maintainHalos
		ifAbsent: [true]