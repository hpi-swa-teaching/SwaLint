standard queries
timeStampsInMenuTitles
	^ self
		valueOfFlag: #timeStampsInMenuTitles
		ifAbsent: [false]