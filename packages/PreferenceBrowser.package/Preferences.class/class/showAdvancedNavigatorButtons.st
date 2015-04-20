standard queries
showAdvancedNavigatorButtons
	^ self
		valueOfFlag: #showAdvancedNavigatorButtons
		ifAbsent: [true]