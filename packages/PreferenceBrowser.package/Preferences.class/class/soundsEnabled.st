standard queries
soundsEnabled
	^ self
		valueOfFlag: #soundsEnabled
		ifAbsent: [true]