standard queries
menuColorFromWorld
	^ self
		valueOfFlag: #menuColorFromWorld
		ifAbsent: [true
			"success"]