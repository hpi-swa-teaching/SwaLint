standard queries
diffsWithPrettyPrint
	^ self
		valueOfFlag: #diffsWithPrettyPrint
		ifAbsent: [false]