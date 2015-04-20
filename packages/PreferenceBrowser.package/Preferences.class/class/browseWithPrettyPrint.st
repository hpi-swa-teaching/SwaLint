standard queries
browseWithPrettyPrint
	^ self
		valueOfFlag: #browseWithPrettyPrint
		ifAbsent: [false]