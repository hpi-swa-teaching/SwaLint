standard queries
showProjectNavigator
	^ self
		valueOfFlag: #showProjectNavigator
		ifAbsent: [true]