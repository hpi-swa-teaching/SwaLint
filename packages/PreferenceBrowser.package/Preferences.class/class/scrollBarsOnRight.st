standard queries
scrollBarsOnRight
	^ self
		valueOfFlag: #scrollBarsOnRight
		ifAbsent: [false]