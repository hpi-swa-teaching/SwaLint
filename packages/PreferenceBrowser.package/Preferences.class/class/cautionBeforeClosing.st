standard queries
cautionBeforeClosing
	^ self
		valueOfFlag: #cautionBeforeClosing
		ifAbsent: [false]