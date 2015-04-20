standard queries
personalizedWorldMenu
	^ self
		valueOfFlag: #personalizedWorldMenu
		ifAbsent: [true]