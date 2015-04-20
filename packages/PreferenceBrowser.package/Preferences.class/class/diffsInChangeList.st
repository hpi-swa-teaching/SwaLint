standard queries
diffsInChangeList
	^ self
		valueOfFlag: #diffsInChangeList
		ifAbsent: [true]