standard queries
canRecordWhilePlaying
	^ self
		valueOfFlag: #canRecordWhilePlaying
		ifAbsent: [false]