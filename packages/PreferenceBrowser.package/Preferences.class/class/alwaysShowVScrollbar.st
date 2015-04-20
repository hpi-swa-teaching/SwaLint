standard queries
alwaysShowVScrollbar
	^ self
		valueOfFlag: #alwaysShowVScrollbar
		ifAbsent: [true]