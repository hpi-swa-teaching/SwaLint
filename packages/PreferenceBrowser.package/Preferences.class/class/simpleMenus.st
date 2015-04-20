standard queries
simpleMenus
	^ self
		valueOfFlag: #simpleMenus
		ifAbsent: [false]