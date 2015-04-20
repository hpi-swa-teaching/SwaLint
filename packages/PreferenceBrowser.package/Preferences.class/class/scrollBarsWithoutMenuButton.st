standard queries
scrollBarsWithoutMenuButton
	^ self
		valueOfFlag: #scrollBarsWithoutMenuButton
		ifAbsent: [false]