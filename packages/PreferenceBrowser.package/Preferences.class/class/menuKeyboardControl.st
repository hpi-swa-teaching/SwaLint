standard queries
menuKeyboardControl
	^ self
		valueOfFlag: #menuKeyboardControl
		ifAbsent: [true]