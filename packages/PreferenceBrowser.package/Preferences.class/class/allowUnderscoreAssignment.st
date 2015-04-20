standard queries
allowUnderscoreAssignment
	^ self
		valueOfFlag: #allowUnderscoreAssignment
		ifAbsent: [false]