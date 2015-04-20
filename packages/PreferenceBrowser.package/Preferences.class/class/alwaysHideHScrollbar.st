standard queries
alwaysHideHScrollbar
	^ self
		valueOfFlag: #alwaysHideHScrollbar
		ifAbsent: [false]