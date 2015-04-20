standard queries
mouseOverForKeyboardFocus
	^ self
		valueOfFlag: #mouseOverForKeyboardFocus
		ifAbsent: [false]