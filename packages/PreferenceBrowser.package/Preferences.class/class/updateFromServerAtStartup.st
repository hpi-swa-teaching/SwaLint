standard queries
updateFromServerAtStartup
	^ self
		valueOfFlag: #updateFromServerAtStartup
		ifAbsent: [false]