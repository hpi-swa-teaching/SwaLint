standard queries
projectZoom
	^ self
		valueOfFlag: #projectZoom
		ifAbsent: [true]