standard queries
twentyFourHourFileStamps
	^ self
		valueOfFlag: #twentyFourHourFileStamps
		ifAbsent: [true]