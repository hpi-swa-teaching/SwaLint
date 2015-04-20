standard queries
dropProducesWatcher
	^ self
		valueOfFlag: #dropProducesWatcher
		ifAbsent: [true]