standard queries
uniqueNamesInHalos
	^ self
		valueOfFlag: #uniqueNamesInHalos
		ifAbsent: [false]