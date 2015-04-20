standard queries
balloonHelpEnabled
	^ self
		valueOfFlag: #balloonHelpEnabled
		ifAbsent: [true]