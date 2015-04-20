standard queries
bigDisplay
	^ self
		valueOfFlag: #bigDisplay
		ifAbsent: [false]