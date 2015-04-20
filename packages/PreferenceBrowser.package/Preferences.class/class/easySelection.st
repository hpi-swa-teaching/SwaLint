standard queries
easySelection
	^ self
		valueOfFlag: #easySelection
		ifAbsent: [false]