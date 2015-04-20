standard queries
fullScreenLeavesDeskMargins
	^ self
		valueOfFlag: #fullScreenLeavesDeskMargins
		ifAbsent: [true]