standard queries
showBoundsInHalo
	^ self
		valueOfFlag: #showBoundsInHalo
		ifAbsent: [false]