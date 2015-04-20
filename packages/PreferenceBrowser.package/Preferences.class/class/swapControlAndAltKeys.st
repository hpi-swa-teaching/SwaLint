standard queries
swapControlAndAltKeys
	^ self
		valueOfFlag: #swapControlAndAltKeys
		ifAbsent: [false]