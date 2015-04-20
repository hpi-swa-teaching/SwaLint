standard queries
cpuWatcherEnabled
	^ self
		valueOfFlag: #cpuWatcherEnabled
		ifAbsent: [false]