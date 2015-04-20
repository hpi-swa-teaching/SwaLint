standard queries
magicHalos
	^ self
		valueOfFlag: #magicHalos
		ifAbsent: [false]