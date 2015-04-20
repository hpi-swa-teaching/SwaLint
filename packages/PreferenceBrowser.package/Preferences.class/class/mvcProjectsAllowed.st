standard queries
mvcProjectsAllowed
	^ self
		valueOfFlag: #mvcProjectsAllowed
		ifAbsent: [true]