standard queries
readOnlyMode
	^ self
		valueOfFlag: #readOnlyMode
		ifAbsent: [false]