standard queries
projectViewsInWindows
	^ self
		valueOfFlag: #projectViewsInWindows
		ifAbsent: [true]