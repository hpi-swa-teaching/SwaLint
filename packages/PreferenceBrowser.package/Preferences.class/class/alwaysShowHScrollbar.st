standard queries
alwaysShowHScrollbar
	^ self
		valueOfFlag: #alwaysShowHScrollbar
		ifAbsent: [false]