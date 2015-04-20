standard queries
noviceMode
	^ self
		valueOfFlag: #noviceMode
		ifAbsent: [false]