standard queries
soundStopWhenDone
	^ self
		valueOfFlag: #soundStopWhenDone
		ifAbsent: [false]