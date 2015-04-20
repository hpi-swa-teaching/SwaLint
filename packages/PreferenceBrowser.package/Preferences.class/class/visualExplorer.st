standard queries
visualExplorer
	^ self
		valueOfFlag: #visualExplorer
		ifAbsent: [true]