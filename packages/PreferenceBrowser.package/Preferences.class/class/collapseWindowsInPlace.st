standard queries
collapseWindowsInPlace
	^ self
		valueOfFlag: #collapseWindowsInPlace
		ifAbsent: [false]