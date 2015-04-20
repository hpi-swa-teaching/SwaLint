standard queries
optionalButtons
	^ self
		valueOfFlag: #optionalButtons
		ifAbsent: [false]